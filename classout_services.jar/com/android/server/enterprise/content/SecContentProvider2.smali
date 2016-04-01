.class public Lcom/android/server/enterprise/content/SecContentProvider2;
.super Landroid/content/ContentProvider;
.source "SecContentProvider2.java"


# static fields
.field private static final API_KEY:Ljava/lang/String; = "API"

.field private static final APPLICATION:I = 0x1

.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.knox.provider2"

.field private static final CLIENTCERTIFICATEMANAGER:I = 0x2

.field private static final DATETIME:I = 0x4

.field private static final DEVICEACCOUNT:I = 0x3

.field private static final DUALSIM:I = 0x5

.field private static final EMAIL:I = 0x6

.field private static final EMAILACCOUNT:I = 0x7

.field private static final ENTERPRISECERTENROLL:I = 0x8

.field private static final ENTERPRISECONTAINER:I = 0x9

.field private static final ENTERPRISECONTAINERSERVICE:I = 0xa

.field private static final ENTERPRISEDEVICEMANAGER:I = 0xb

.field private static final EXCHANGEACCOUNT:I = 0xc

.field private static final KIOSKMODESEC:I = 0xd

.field private static final KNOXCUSTOMMANAGERSERVICE1:I = 0xe

.field private static final KNOXCUSTOMMANAGERSERVICE2:I = 0xf

.field private static final MISC:I = 0x10

.field private static final MULTIUSERMANAGER:I = 0x11

.field private static final PHONERESTRICTION:I = 0x12

.field private static final TAG:Ljava/lang/String; = "SecContentProvider2"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field private static final VPN:I = 0x13

.field private static final WIFI:I = 0x14


# instance fields
.field private final DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mKnoxCustomManagerService:Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 134
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    .line 135
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "ApplicationPolicy"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 136
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "ClientCertificateManager"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 137
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "DeviceAccountPolicy"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "DualSimPolicy"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 139
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EmailPolicy"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 140
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EmailAccountPolicy"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 141
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EnterpriseKnoxManagerPolicy"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 142
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EnterpriseContainerPolicy"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 143
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EnterpriseContainerService"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 144
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "EnterpriseDeviceManager"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 145
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "ExchangeAccountPolicy"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 146
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "KioskMode"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 147
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "KnoxCustomManagerService1"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 148
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "KnoxCustomManagerService2"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 149
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "MiscPolicy"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 150
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "MultiUserManager"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 151
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "PhoneRestrictionPolicy"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 152
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "vpnPolicy"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 153
    sget-object v0, URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider2"

    const-string v2, "WifiPolicy"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 154
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, DEBUG:Z

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, mKnoxCustomManagerService:Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;

    return-void
.end method

.method private getCallerName(I)Ljava/lang/String;
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 3613
    const/4 v0, 0x0

    .line 3614
    .local v0, "callerName":Ljava/lang/String;
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    .line 3615
    .local v1, "mPackageManagerService":Lcom/android/server/pm/PackageManagerService;
    if-eqz v1, :cond_10

    .line 3616
    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageManagerService;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 3618
    :cond_10
    if-nez v0, :cond_15

    const-string/jumbo v0, "fail to get caller name."

    .end local v0    # "callerName":Ljava/lang/String;
    :cond_15
    return-object v0
.end method

.method private getKnoxCustomManagerService()Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;
    .registers 2

    .prologue
    .line 3642
    iget-object v0, p0, mKnoxCustomManagerService:Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;

    if-nez v0, :cond_11

    .line 3643
    const-string/jumbo v0, "knoxcustom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;

    move-result-object v0

    iput-object v0, p0, mKnoxCustomManagerService:Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;

    .line 3645
    :cond_11
    iget-object v0, p0, mKnoxCustomManagerService:Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 3624
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 3630
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v5, 0x0

    .line 3575
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3580
    .local v1, "callingUid":I
    sget-object v3, URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_70

    .line 3608
    :cond_e
    :goto_e
    :pswitch_e
    return-object v5

    .line 3582
    :pswitch_f
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_e

    .line 3585
    :pswitch_1b
    const-string/jumbo v3, "eas_account_policy"

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 3587
    .local v2, "lEASEmailPolicy":Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    if-eqz v2, :cond_e

    .line 3588
    const-string v3, "API"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3589
    .local v0, "api":Ljava/lang/String;
    if-eqz v0, :cond_e

    const-string/jumbo v3, "setAccountEmailPassword"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 3590
    new-instance v3, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v3, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const-string/jumbo v4, "password"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    goto :goto_e

    .line 3596
    .end local v0    # "api":Ljava/lang/String;
    .end local v2    # "lEASEmailPolicy":Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    :pswitch_47
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3597
    const-string v3, "SecContentProvider2"

    const-string/jumbo v4, "do notifyChange() for knoxCustomManagerService1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 3602
    :pswitch_5b
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3603
    const-string v3, "SecContentProvider2"

    const-string/jumbo v4, "do notifyChange() for knoxCustomManagerService2"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 3580
    nop

    :pswitch_data_70
    .packed-switch 0xc
        :pswitch_1b
        :pswitch_e
        :pswitch_47
        :pswitch_5b
        :pswitch_e
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 159
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 86
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    .line 167
    .local v17, "callingUid":I
    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v77

    .line 170
    .local v77, "userId":I
    const/16 v34, 0x0

    .line 175
    .local v34, "knoxCustomService":Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;
    const/16 v49, 0x0

    .line 176
    .local v49, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/16 v16, 0x0

    .line 178
    .local v16, "bundle":Landroid/os/Bundle;
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "query(), uri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " selection = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "called from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, getCallerName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget-object v5, URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    packed-switch v5, :pswitch_data_349e

    .line 3569
    :cond_66
    :goto_66
    :pswitch_66
    const/4 v5, 0x0

    :goto_67
    return-object v5

    .line 189
    :pswitch_68
    const-string/jumbo v5, "phone_restriction_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 191
    .local v45, "lPhoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-eqz v45, :cond_66

    .line 192
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_34ca

    :cond_7b
    :goto_7b
    packed-switch v5, :pswitch_data_3510

    .line 408
    const-string v5, "SecContentProvider2"

    const-string/jumbo v6, "return null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v5, 0x0

    goto :goto_67

    .line 192
    :sswitch_88
    const-string/jumbo v6, "isCopyContactToSimAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7b

    const/4 v5, 0x0

    goto :goto_7b

    :sswitch_95
    const-string/jumbo v6, "isBlockSmsWithStorageEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7b

    const/4 v5, 0x1

    goto :goto_7b

    :sswitch_a2
    const-string v6, "checkEnableUseOfPacketData"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7b

    const/4 v5, 0x2

    goto :goto_7b

    :sswitch_ae
    const-string/jumbo v6, "isBlockMmsWithStorageEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7b

    const/4 v5, 0x3

    goto :goto_7b

    :sswitch_bb
    const-string v6, "canIncomingSms"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7b

    const/4 v5, 0x4

    goto :goto_7b

    :sswitch_c7
    const-string/jumbo v6, "isLimitNumberOfSmsEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7b

    const/4 v5, 0x5

    goto :goto_7b

    :sswitch_d4
    const-string/jumbo v6, "isOutgoingSmsAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7b

    const/4 v5, 0x6

    goto :goto_7b

    :sswitch_e1
    const-string v6, "canOutgoingSms"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7b

    const/4 v5, 0x7

    goto :goto_7b

    :sswitch_ed
    const-string/jumbo v6, "isIncomingMmsAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7b

    const/16 v5, 0x8

    goto :goto_7b

    :sswitch_fb
    const-string/jumbo v6, "isIncomingSmsAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7b

    const/16 v5, 0x9

    goto/16 :goto_7b

    :sswitch_10a
    const-string/jumbo v6, "isOutgoingMmsAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7b

    const/16 v5, 0xa

    goto/16 :goto_7b

    :sswitch_119
    const-string/jumbo v6, "getEmergencyCallOnly"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7b

    const/16 v5, 0xb

    goto/16 :goto_7b

    :sswitch_128
    const-string/jumbo v6, "isCallerIDDisplayAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7b

    const/16 v5, 0xc

    goto/16 :goto_7b

    :sswitch_137
    const-string/jumbo v6, "isWapPushAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7b

    const/16 v5, 0xd

    goto/16 :goto_7b

    :sswitch_146
    const-string v6, "canIncomingCall"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7b

    const/16 v5, 0xe

    goto/16 :goto_7b

    :sswitch_154
    const-string v6, "canOutgoingCall"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7b

    const/16 v5, 0xf

    goto/16 :goto_7b

    :sswitch_162
    const-string/jumbo v6, "isSimLockedByAdmin"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7b

    const/16 v5, 0x10

    goto/16 :goto_7b

    .line 194
    :pswitch_171
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isCopyContactToSimAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 195
    .local v67, "result":Z
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isCopyContactToSimAllowed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v67

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isCopyContactToSimAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 200
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_1b8
    move-object/from16 v5, v49

    .line 412
    goto/16 :goto_67

    .line 206
    .end local v67    # "result":Z
    :pswitch_1bc
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 209
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isBlockSmsWithStorageEnabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 212
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1b8

    .line 218
    .end local v67    # "result":Z
    :pswitch_1e9
    const/4 v13, 0x0

    .line 219
    .local v13, "arg":Z
    if-eqz p4, :cond_1f9

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_1f9

    .line 220
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 222
    :cond_1f9
    move-object/from16 v0, v45

    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v67

    .line 225
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "checkEnableUseOfPacketData"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 228
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1b8

    .line 234
    .end local v13    # "arg":Z
    .end local v67    # "result":Z
    :pswitch_21e
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 237
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isBlockMmsWithStorageEnabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 240
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b8

    .line 246
    .end local v67    # "result":Z
    :pswitch_24c
    if-eqz p4, :cond_254

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_257

    .line 247
    :cond_254
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 249
    :cond_257
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canIncomingSms(Ljava/lang/String;)Z

    move-result v67

    .line 252
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "canIncomingSms"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 255
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b8

    .line 261
    .end local v67    # "result":Z
    :pswitch_280
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 264
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isLimitNumberOfSmsEnabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 267
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b8

    .line 273
    .end local v67    # "result":Z
    :pswitch_2ae
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOutgoingSmsAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 277
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isOutgoingSmsAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 280
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b8

    .line 286
    .end local v67    # "result":Z
    :pswitch_2dc
    if-eqz p4, :cond_2e4

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_2e7

    .line 287
    :cond_2e4
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 289
    :cond_2e7
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canOutgoingSms(Ljava/lang/String;)Z

    move-result v67

    .line 292
    .restart local v67    # "result":Z
    goto/16 :goto_1b8

    .line 294
    .end local v67    # "result":Z
    :pswitch_2f2
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingMmsAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 297
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isIncomingMmsAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 300
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b8

    .line 306
    .end local v67    # "result":Z
    :pswitch_320
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingSmsAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 309
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isIncomingSmsAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 312
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b8

    .line 318
    .end local v67    # "result":Z
    :pswitch_34e
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOutgoingMmsAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 321
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isOutgoingMmsAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 324
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b8

    .line 330
    .end local v67    # "result":Z
    :pswitch_37c
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v45

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEmergencyCallOnly(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v67

    .line 332
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getEmergencyCallOnly"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 335
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b8

    .line 340
    .end local v67    # "result":Z
    :pswitch_3ab
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isCallerIDDisplayAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 343
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isCallerIDDisplayAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 346
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b8

    .line 352
    .end local v67    # "result":Z
    :pswitch_3d9
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isWapPushAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 355
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isWapPushAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 358
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b8

    .line 364
    .end local v67    # "result":Z
    :pswitch_407
    if-eqz p4, :cond_40f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_412

    .line 365
    :cond_40f
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 367
    :cond_412
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canIncomingCall(Ljava/lang/String;)Z

    move-result v67

    .line 370
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "canIncomingCall"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 373
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b8

    .line 379
    .end local v67    # "result":Z
    :pswitch_43b
    if-eqz p4, :cond_443

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_446

    .line 380
    :cond_443
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 382
    :cond_446
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canOutgoingCall(Ljava/lang/String;)Z

    move-result v67

    .line 384
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "canOutgoingCall"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 387
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b8

    .line 393
    .end local v67    # "result":Z
    :pswitch_46f
    if-eqz p4, :cond_477

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_47a

    .line 394
    :cond_477
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 396
    :cond_47a
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v67

    .line 399
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isSimLockedByAdmin"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 402
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b8

    .line 417
    .end local v45    # "lPhoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    .end local v67    # "result":Z
    :pswitch_4a4
    invoke-direct/range {p0 .. p0}, getKnoxCustomManagerService()Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;

    move-result-object v34

    .line 418
    if-eqz v34, :cond_cea

    if-eqz p3, :cond_cea

    .line 422
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_3536

    :cond_4b4
    :goto_4b4
    packed-switch v5, :pswitch_data_35b0

    .line 1153
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 422
    :sswitch_4ba
    const-string/jumbo v6, "setSealedState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b4

    const/4 v5, 0x0

    goto :goto_4b4

    :sswitch_4c7
    const-string/jumbo v6, "getSealedState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b4

    const/4 v5, 0x1

    goto :goto_4b4

    :sswitch_4d4
    const-string/jumbo v6, "getSealedPowerDialogOptionMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b4

    const/4 v5, 0x2

    goto :goto_4b4

    :sswitch_4e1
    const-string/jumbo v6, "getSealedModeString"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b4

    const/4 v5, 0x3

    goto :goto_4b4

    :sswitch_4ee
    const-string/jumbo v6, "getSealedExitUI"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b4

    const/4 v5, 0x4

    goto :goto_4b4

    :sswitch_4fb
    const-string/jumbo v6, "getSealedHomeActivity"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b4

    const/4 v5, 0x5

    goto :goto_4b4

    :sswitch_508
    const-string/jumbo v6, "getSealedStatusBarMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b4

    const/4 v5, 0x6

    goto :goto_4b4

    :sswitch_515
    const-string/jumbo v6, "getSealedStatusBarClockState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b4

    const/4 v5, 0x7

    goto :goto_4b4

    :sswitch_522
    const-string/jumbo v6, "getSealedStatusBarIconsState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b4

    const/16 v5, 0x8

    goto :goto_4b4

    :sswitch_530
    const-string/jumbo v6, "getSealedUsbMassStorageState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b4

    const/16 v5, 0x9

    goto/16 :goto_4b4

    :sswitch_53f
    const-string/jumbo v6, "getSealedUsbNetState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b4

    const/16 v5, 0xa

    goto/16 :goto_4b4

    :sswitch_54e
    const-string/jumbo v6, "getSealedUsbNetAddress"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b4

    const/16 v5, 0xb

    goto/16 :goto_4b4

    :sswitch_55d
    const-string/jumbo v6, "getPowerSavingMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b4

    const/16 v5, 0xc

    goto/16 :goto_4b4

    :sswitch_56c
    const-string/jumbo v6, "getChargingLEDState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b4

    const/16 v5, 0xd

    goto/16 :goto_4b4

    :sswitch_57b
    const-string/jumbo v6, "getScreenWakeupOnPowerState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b4

    const/16 v5, 0xe

    goto/16 :goto_4b4

    :sswitch_58a
    const-string/jumbo v6, "getLTESettingState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b4

    const/16 v5, 0xf

    goto/16 :goto_4b4

    :sswitch_599
    const-string/jumbo v6, "getCallScreenDisabledItems"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b4

    const/16 v5, 0x10

    goto/16 :goto_4b4

    :sswitch_5a8
    const-string/jumbo v6, "getExcludedMessagesNotifications"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b4

    const/16 v5, 0x11

    goto/16 :goto_4b4

    :sswitch_5b7
    const-string/jumbo v6, "getMessageIdsMarkedToDelete"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b4

    const/16 v5, 0x12

    goto/16 :goto_4b4

    :sswitch_5c6
    const-string/jumbo v6, "getInfraredState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b4

    const/16 v5, 0x13

    goto/16 :goto_4b4

    :sswitch_5d5
    const-string/jumbo v6, "getSensorDisabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b4

    const/16 v5, 0x14

    goto/16 :goto_4b4

    :sswitch_5e4
    const-string/jumbo v6, "getCustomOperatorName"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b4

    const/16 v5, 0x15

    goto/16 :goto_4b4

    :sswitch_5f3
    const-string/jumbo v6, "getVolumePanelEnabledState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b4

    const/16 v5, 0x16

    goto/16 :goto_4b4

    :sswitch_602
    const-string/jumbo v6, "getVolumeControlStream"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b4

    const/16 v5, 0x17

    goto/16 :goto_4b4

    :sswitch_611
    const-string/jumbo v6, "getStatusBarText"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b4

    const/16 v5, 0x18

    goto/16 :goto_4b4

    :sswitch_620
    const-string/jumbo v6, "getStatusBarTextStyle"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b4

    const/16 v5, 0x19

    goto/16 :goto_4b4

    :sswitch_62f
    const-string/jumbo v6, "getStatusBarTextSize"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b4

    const/16 v5, 0x1a

    goto/16 :goto_4b4

    :sswitch_63e
    const-string/jumbo v6, "getWifiConnectedMessageState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b4

    const/16 v5, 0x1b

    goto/16 :goto_4b4

    :sswitch_64d
    const-string/jumbo v6, "getTorchOnVolumeButtonsState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b4

    const/16 v5, 0x1c

    goto/16 :goto_4b4

    :sswitch_65c
    const-string/jumbo v6, "getPowerMenuLockedState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b4

    const/16 v5, 0x1d

    goto/16 :goto_4b4

    .line 427
    :pswitch_66b
    if-eqz p4, :cond_674

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_679

    .line 428
    :cond_674
    if-eqz p4, :cond_676

    .line 433
    :cond_676
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 437
    :cond_679
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v61

    .line 439
    .local v61, "paramState":Z
    const/4 v5, 0x1

    aget-object v59, p4, v5

    .line 443
    .local v59, "paramPasscode":Ljava/lang/String;
    const/16 v72, -0x1

    .line 446
    .local v72, "returnState":I
    :try_start_685
    move-object/from16 v0, v34

    move/from16 v1, v61

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->setProKioskState(ZLjava/lang/String;)I
    :try_end_68e
    .catch Landroid/os/RemoteException; {:try_start_685 .. :try_end_68e} :catch_6b2

    move-result v72

    .line 453
    :goto_68f
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "setSealedState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 456
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v59    # "paramPasscode":Ljava/lang/String;
    .end local v61    # "paramState":Z
    .end local v72    # "returnState":I
    :cond_6ae
    :goto_6ae
    move-object/from16 v5, v49

    .line 1156
    goto/16 :goto_67

    .line 447
    .restart local v59    # "paramPasscode":Ljava/lang/String;
    .restart local v61    # "paramState":Z
    .restart local v72    # "returnState":I
    :catch_6b2
    move-exception v23

    .line 448
    .local v23, "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_68f

    .line 465
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v59    # "paramPasscode":Ljava/lang/String;
    .end local v61    # "paramState":Z
    .end local v72    # "returnState":I
    :pswitch_6bd
    const/16 v64, 0x0

    .line 468
    .local v64, "proKioskState":Z
    :try_start_6bf
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getProKioskState()Z
    :try_end_6c2
    .catch Landroid/os/RemoteException; {:try_start_6bf .. :try_end_6c2} :catch_6e3

    move-result v64

    .line 475
    :goto_6c3
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 478
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v64 .. v64}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_6ae

    .line 469
    :catch_6e3
    move-exception v23

    .line 470
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with knoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6c3

    .line 487
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v64    # "proKioskState":Z
    :pswitch_6ee
    const/16 v72, 0x2

    .line 490
    .restart local v72    # "returnState":I
    :try_start_6f0
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getPowerDialogOptionMode()I
    :try_end_6f3
    .catch Landroid/os/RemoteException; {:try_start_6f0 .. :try_end_6f3} :catch_714

    move-result v72

    .line 497
    :goto_6f4
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedPowerDialogOptionMode"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 500
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_6ae

    .line 491
    :catch_714
    move-exception v23

    .line 492
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6f4

    .line 509
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_71f
    if-eqz p4, :cond_727

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_72c

    .line 510
    :cond_727
    if-eqz p4, :cond_729

    .line 515
    :cond_729
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 518
    :cond_72c
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v62

    .line 519
    .local v62, "paramStringType":I
    const/16 v73, 0x0

    .line 524
    .local v73, "returnString":Ljava/lang/String;
    :try_start_735
    move-object/from16 v0, v34

    move/from16 v1, v62

    invoke-interface {v0, v1}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getProKioskString(I)Ljava/lang/String;
    :try_end_73c
    .catch Landroid/os/RemoteException; {:try_start_735 .. :try_end_73c} :catch_75a

    move-result-object v73

    .line 531
    :goto_73d
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedModeString"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 534
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v73, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6ae

    .line 525
    :catch_75a
    move-exception v23

    .line 526
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_73d

    .line 543
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v62    # "paramStringType":I
    .end local v73    # "returnString":Ljava/lang/String;
    :pswitch_765
    if-eqz p4, :cond_76d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_772

    .line 544
    :cond_76d
    if-eqz p4, :cond_76f

    .line 549
    :cond_76f
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 553
    :cond_772
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v62

    .line 554
    .restart local v62    # "paramStringType":I
    const/16 v73, 0x0

    .line 559
    .restart local v73    # "returnString":Ljava/lang/String;
    :try_start_77b
    move-object/from16 v0, v34

    move/from16 v1, v62

    invoke-interface {v0, v1}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getExitUI(I)Ljava/lang/String;
    :try_end_782
    .catch Landroid/os/RemoteException; {:try_start_77b .. :try_end_782} :catch_7a0

    move-result-object v73

    .line 566
    :goto_783
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedExitUI"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 569
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v73, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6ae

    .line 560
    :catch_7a0
    move-exception v23

    .line 561
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_783

    .line 578
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v62    # "paramStringType":I
    .end local v73    # "returnString":Ljava/lang/String;
    :pswitch_7ab
    const/16 v73, 0x0

    .line 581
    .restart local v73    # "returnString":Ljava/lang/String;
    :try_start_7ad
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getHomeActivity()Ljava/lang/String;
    :try_end_7b0
    .catch Landroid/os/RemoteException; {:try_start_7ad .. :try_end_7b0} :catch_7ce

    move-result-object v73

    .line 588
    :goto_7b1
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedHomeActivity"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 591
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v73, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6ae

    .line 582
    :catch_7ce
    move-exception v23

    .line 583
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7b1

    .line 600
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v73    # "returnString":Ljava/lang/String;
    :pswitch_7d9
    const/16 v72, 0x2

    .line 603
    .restart local v72    # "returnState":I
    :try_start_7db
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getStatusBarMode()I
    :try_end_7de
    .catch Landroid/os/RemoteException; {:try_start_7db .. :try_end_7de} :catch_800

    move-result v72

    .line 610
    :goto_7df
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedStatusBarMode"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 613
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6ae

    .line 604
    :catch_800
    move-exception v23

    .line 605
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7df

    .line 622
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_80b
    const/16 v72, 0x1

    .line 625
    .local v72, "returnState":Z
    :try_start_80d
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getStatusBarClockState()Z
    :try_end_810
    .catch Landroid/os/RemoteException; {:try_start_80d .. :try_end_810} :catch_832

    move-result v72

    .line 632
    :goto_811
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedStatusBarClockState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 635
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6ae

    .line 626
    :catch_832
    move-exception v23

    .line 627
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_811

    .line 644
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_83d
    const/16 v72, 0x1

    .line 646
    .restart local v72    # "returnState":Z
    :try_start_83f
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getStatusBarIconsState()Z
    :try_end_842
    .catch Landroid/os/RemoteException; {:try_start_83f .. :try_end_842} :catch_864

    move-result v72

    .line 653
    :goto_843
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedStatusBarIconsState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 656
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6ae

    .line 647
    :catch_864
    move-exception v23

    .line 648
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_843

    .line 665
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_86f
    const/16 v72, 0x1

    .line 668
    .restart local v72    # "returnState":Z
    :try_start_871
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getUsbMassStorageState()Z
    :try_end_874
    .catch Landroid/os/RemoteException; {:try_start_871 .. :try_end_874} :catch_896

    move-result v72

    .line 675
    :goto_875
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedUsbMassStorageState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 678
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6ae

    .line 669
    :catch_896
    move-exception v23

    .line 670
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_875

    .line 687
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_8a1
    const/16 v72, 0x0

    .line 689
    .restart local v72    # "returnState":Z
    :try_start_8a3
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getUsbNetState()Z
    :try_end_8a6
    .catch Landroid/os/RemoteException; {:try_start_8a3 .. :try_end_8a6} :catch_8c8

    move-result v72

    .line 696
    :goto_8a7
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedUsbNetState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 699
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6ae

    .line 690
    :catch_8c8
    move-exception v23

    .line 691
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8a7

    .line 708
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_8d3
    if-eqz p4, :cond_8db

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_8e0

    .line 709
    :cond_8db
    if-eqz p4, :cond_8dd

    .line 714
    :cond_8dd
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 717
    :cond_8e0
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    .line 718
    .local v58, "paramAddressType":I
    const/16 v73, 0x0

    .line 723
    .restart local v73    # "returnString":Ljava/lang/String;
    :try_start_8e9
    move-object/from16 v0, v34

    move/from16 v1, v58

    invoke-interface {v0, v1}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getUsbNetAddress(I)Ljava/lang/String;
    :try_end_8f0
    .catch Landroid/os/RemoteException; {:try_start_8e9 .. :try_end_8f0} :catch_90e

    move-result-object v73

    .line 730
    :goto_8f1
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedUsbNetAddress"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 733
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v73, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6ae

    .line 724
    :catch_90e
    move-exception v23

    .line 725
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8f1

    .line 742
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v58    # "paramAddressType":I
    .end local v73    # "returnString":Ljava/lang/String;
    :pswitch_919
    const/16 v72, 0x0

    .line 744
    .local v72, "returnState":I
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "ultra_powersaving_mode"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v76

    .line 745
    .local v76, "ultraSetting":I
    if-eqz v76, :cond_950

    .line 746
    const/16 v72, 0x2

    .line 764
    :goto_92f
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getPowerSavingMode"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 767
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6ae

    .line 748
    :cond_950
    const/16 v27, 0x0

    .line 752
    .local v27, "globalSetting":I
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "psm_switch"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    .line 755
    if-nez v27, :cond_967

    .line 756
    const/16 v72, 0x0

    goto :goto_92f

    .line 758
    :cond_967
    const/16 v72, 0x1

    goto :goto_92f

    .line 779
    .end local v27    # "globalSetting":I
    .end local v72    # "returnState":I
    .end local v76    # "ultraSetting":I
    :pswitch_96a
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "led_indicator_charing"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_99f

    const/16 v72, 0x1

    .line 783
    .local v72, "returnState":Z
    :goto_97e
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getChargingLEDState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 786
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6ae

    .line 779
    .end local v72    # "returnState":Z
    :cond_99f
    const/16 v72, 0x0

    goto :goto_97e

    .line 795
    :pswitch_9a2
    const/16 v72, 0x1

    .line 797
    .restart local v72    # "returnState":Z
    :try_start_9a4
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getScreenWakeupOnPowerState()Z
    :try_end_9a7
    .catch Landroid/os/RemoteException; {:try_start_9a4 .. :try_end_9a7} :catch_9c9

    move-result v72

    .line 804
    :goto_9a8
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getScreenWakeupOnPowerState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 807
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6ae

    .line 798
    :catch_9c9
    move-exception v23

    .line 799
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9a8

    .line 816
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_9d4
    const/16 v72, 0x0

    .line 818
    .restart local v72    # "returnState":Z
    :try_start_9d6
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getLTESettingState()Z
    :try_end_9d9
    .catch Landroid/os/RemoteException; {:try_start_9d6 .. :try_end_9d9} :catch_9fb

    move-result v72

    .line 825
    :goto_9da
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getLTESettingState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 828
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6ae

    .line 819
    :catch_9fb
    move-exception v23

    .line 820
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9da

    .line 837
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_a06
    const/16 v72, 0x0

    .line 840
    .local v72, "returnState":I
    :try_start_a08
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getCallScreenDisabledItems()I
    :try_end_a0b
    .catch Landroid/os/RemoteException; {:try_start_a08 .. :try_end_a0b} :catch_a2d

    move-result v72

    .line 847
    :goto_a0c
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getCallScreenDisabledItems"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 850
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6ae

    .line 841
    :catch_a2d
    move-exception v23

    .line 842
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a0c

    .line 859
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_a38
    const/16 v71, 0x0

    .line 862
    .local v71, "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_a3a
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getExcludedMessagesNotifications()Ljava/util/List;
    :try_end_a3d
    .catch Landroid/os/RemoteException; {:try_start_a3a .. :try_end_a3d} :catch_a74

    move-result-object v71

    .line 867
    :goto_a3e
    if-eqz v71, :cond_a40

    .line 873
    :cond_a40
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getExcludedMessagesNotifications"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 877
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v71, :cond_6ae

    invoke-interface/range {v71 .. v71}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6ae

    .line 879
    invoke-interface/range {v71 .. v71}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, "i$":Ljava/util/Iterator;
    :goto_a5c
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6ae

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Ljava/lang/String;

    .line 880
    .local v78, "value":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v78, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_a5c

    .line 863
    .end local v30    # "i$":Ljava/util/Iterator;
    .end local v78    # "value":Ljava/lang/String;
    :catch_a74
    move-exception v23

    .line 864
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a3e

    .line 891
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v71    # "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_a7f
    const/16 v71, 0x0

    .line 894
    .restart local v71    # "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_a81
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getMessageIdsMarkedToDelete()Ljava/util/List;
    :try_end_a84
    .catch Landroid/os/RemoteException; {:try_start_a81 .. :try_end_a84} :catch_abb

    move-result-object v71

    .line 899
    :goto_a85
    if-eqz v71, :cond_a87

    .line 905
    :cond_a87
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getMessageIdsMarkedToDelete"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 909
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v71, :cond_6ae

    invoke-interface/range {v71 .. v71}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6ae

    .line 911
    invoke-interface/range {v71 .. v71}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .restart local v30    # "i$":Ljava/util/Iterator;
    :goto_aa3
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6ae

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Ljava/lang/String;

    .line 912
    .restart local v78    # "value":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v78, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_aa3

    .line 895
    .end local v30    # "i$":Ljava/util/Iterator;
    .end local v78    # "value":Ljava/lang/String;
    :catch_abb
    move-exception v23

    .line 896
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a85

    .line 923
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v71    # "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_ac6
    const/16 v72, 0x1

    .line 925
    .local v72, "returnState":Z
    :try_start_ac8
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getInfraredState()Z
    :try_end_acb
    .catch Landroid/os/RemoteException; {:try_start_ac8 .. :try_end_acb} :catch_aed

    move-result v72

    .line 932
    :goto_acc
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getInfraredState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 935
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6ae

    .line 926
    :catch_aed
    move-exception v23

    .line 927
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_acc

    .line 944
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_af8
    const/16 v72, 0x0

    .line 947
    .local v72, "returnState":I
    :try_start_afa
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSensorDisabled()I
    :try_end_afd
    .catch Landroid/os/RemoteException; {:try_start_afa .. :try_end_afd} :catch_b1f

    move-result v72

    .line 954
    :goto_afe
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSensorDisabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 957
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6ae

    .line 948
    :catch_b1f
    move-exception v23

    .line 949
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_afe

    .line 966
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_b2a
    const/16 v73, 0x0

    .line 969
    .restart local v73    # "returnString":Ljava/lang/String;
    :try_start_b2c
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getCustomOperatorName()Ljava/lang/String;
    :try_end_b2f
    .catch Landroid/os/RemoteException; {:try_start_b2c .. :try_end_b2f} :catch_b4d

    move-result-object v73

    .line 976
    :goto_b30
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getCustomOperatorName"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 979
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v73, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6ae

    .line 970
    :catch_b4d
    move-exception v23

    .line 971
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b30

    .line 988
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v73    # "returnString":Ljava/lang/String;
    :pswitch_b58
    const/16 v72, 0x1

    .line 990
    .local v72, "returnState":Z
    :try_start_b5a
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getVolumePanelEnabledState()Z
    :try_end_b5d
    .catch Landroid/os/RemoteException; {:try_start_b5a .. :try_end_b5d} :catch_b7f

    move-result v72

    .line 997
    :goto_b5e
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getVolumePanelEnabledState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1000
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6ae

    .line 991
    :catch_b7f
    move-exception v23

    .line 992
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b5e

    .line 1009
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_b8a
    const/16 v72, 0x0

    .line 1012
    .local v72, "returnState":I
    :try_start_b8c
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getVolumeControlStream()I
    :try_end_b8f
    .catch Landroid/os/RemoteException; {:try_start_b8c .. :try_end_b8f} :catch_bb1

    move-result v72

    .line 1019
    :goto_b90
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getVolumeControlStream"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1022
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6ae

    .line 1013
    :catch_bb1
    move-exception v23

    .line 1014
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b90

    .line 1031
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_bbc
    const/16 v73, 0x0

    .line 1034
    .restart local v73    # "returnString":Ljava/lang/String;
    :try_start_bbe
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getStatusBarText()Ljava/lang/String;
    :try_end_bc1
    .catch Landroid/os/RemoteException; {:try_start_bbe .. :try_end_bc1} :catch_bdf

    move-result-object v73

    .line 1041
    :goto_bc2
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getStatusBarText"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1044
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v73, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6ae

    .line 1035
    :catch_bdf
    move-exception v23

    .line 1036
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_bc2

    .line 1053
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v73    # "returnString":Ljava/lang/String;
    :pswitch_bea
    const/16 v72, 0x0

    .line 1056
    .restart local v72    # "returnState":I
    :try_start_bec
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getStatusBarTextStyle()I
    :try_end_bef
    .catch Landroid/os/RemoteException; {:try_start_bec .. :try_end_bef} :catch_c11

    move-result v72

    .line 1063
    :goto_bf0
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getStatusBarTextStyle"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1066
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6ae

    .line 1057
    :catch_c11
    move-exception v23

    .line 1058
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_bf0

    .line 1075
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_c1c
    const/16 v72, 0x0

    .line 1078
    .restart local v72    # "returnState":I
    :try_start_c1e
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getStatusBarTextSize()I
    :try_end_c21
    .catch Landroid/os/RemoteException; {:try_start_c1e .. :try_end_c21} :catch_c43

    move-result v72

    .line 1085
    :goto_c22
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getStatusBarTextSize"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1088
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6ae

    .line 1079
    :catch_c43
    move-exception v23

    .line 1080
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c22

    .line 1097
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_c4e
    const/16 v72, 0x1

    .line 1099
    .local v72, "returnState":Z
    :try_start_c50
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getWifiConnectedMessageState()Z
    :try_end_c53
    .catch Landroid/os/RemoteException; {:try_start_c50 .. :try_end_c53} :catch_c75

    move-result v72

    .line 1106
    :goto_c54
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getWifiConnectedMessageState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1109
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6ae

    .line 1100
    :catch_c75
    move-exception v23

    .line 1101
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c54

    .line 1118
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_c80
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "torchlight_enable"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_cb5

    const/16 v72, 0x1

    .line 1122
    .restart local v72    # "returnState":Z
    :goto_c94
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getTorchOnVolumeButtonsState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1125
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6ae

    .line 1118
    .end local v72    # "returnState":Z
    :cond_cb5
    const/16 v72, 0x0

    goto :goto_c94

    .line 1134
    :pswitch_cb8
    const/16 v72, 0x1

    .line 1136
    .restart local v72    # "returnState":Z
    :try_start_cba
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getPowerMenuLockedState()Z
    :try_end_cbd
    .catch Landroid/os/RemoteException; {:try_start_cba .. :try_end_cbd} :catch_cdf

    move-result v72

    .line 1143
    :goto_cbe
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getPowerMenuLockedState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1146
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6ae

    .line 1137
    :catch_cdf
    move-exception v23

    .line 1138
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_cbe

    .line 1160
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :cond_cea
    if-nez p3, :cond_66

    goto/16 :goto_66

    .line 1166
    :pswitch_cee
    invoke-direct/range {p0 .. p0}, getKnoxCustomManagerService()Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;

    move-result-object v34

    .line 1167
    if-eqz v34, :cond_15ab

    if-eqz p3, :cond_15ab

    .line 1171
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_35f0

    :cond_cfe
    :goto_cfe
    packed-switch v5, :pswitch_data_3676

    .line 1942
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 1171
    :sswitch_d04
    const-string/jumbo v6, "getSealedNotificationMessagesState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cfe

    const/4 v5, 0x0

    goto :goto_cfe

    :sswitch_d11
    const-string/jumbo v6, "getSealedMultiWindowFixedState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cfe

    const/4 v5, 0x1

    goto :goto_cfe

    :sswitch_d1e
    const-string/jumbo v6, "getSealedPowerDialogItems"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cfe

    const/4 v5, 0x2

    goto :goto_cfe

    :sswitch_d2b
    const-string/jumbo v6, "getSealedPowerDialogCustomItemsState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cfe

    const/4 v5, 0x3

    goto :goto_cfe

    :sswitch_d38
    const-string/jumbo v6, "getSealedPowerDialogCustomItems"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cfe

    const/4 v5, 0x4

    goto :goto_cfe

    :sswitch_d45
    const-string/jumbo v6, "getExtendedCallInfoState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cfe

    const/4 v5, 0x5

    goto :goto_cfe

    :sswitch_d52
    const-string/jumbo v6, "getSettingsHiddenState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cfe

    const/4 v5, 0x6

    goto :goto_cfe

    :sswitch_d5f
    const-string/jumbo v6, "getSealedHideNotificationMessages"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cfe

    const/4 v5, 0x7

    goto :goto_cfe

    :sswitch_d6c
    const-string/jumbo v6, "getCheckCoverPopupState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cfe

    const/16 v5, 0x8

    goto :goto_cfe

    :sswitch_d7a
    const-string/jumbo v6, "getRecentLongPressActivity"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cfe

    const/16 v5, 0x9

    goto/16 :goto_cfe

    :sswitch_d89
    const-string/jumbo v6, "getRecentLongPressMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cfe

    const/16 v5, 0xa

    goto/16 :goto_cfe

    :sswitch_d98
    const-string/jumbo v6, "getVolumeButtonRotationState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cfe

    const/16 v5, 0xb

    goto/16 :goto_cfe

    :sswitch_da7
    const-string/jumbo v6, "getGearNotificationState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cfe

    const/16 v5, 0xc

    goto/16 :goto_cfe

    :sswitch_db6
    const-string/jumbo v6, "getScreenOffOnHomeLongPressState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cfe

    const/16 v5, 0xd

    goto/16 :goto_cfe

    :sswitch_dc5
    const-string/jumbo v6, "getScreenOffOnStatusBarDoubleTapState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cfe

    const/16 v5, 0xe

    goto/16 :goto_cfe

    :sswitch_dd4
    const-string/jumbo v6, "getWifiAutoSwitchState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cfe

    const/16 v5, 0xf

    goto/16 :goto_cfe

    :sswitch_de3
    const-string/jumbo v6, "getWifiAutoSwitchThreshold"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cfe

    const/16 v5, 0x10

    goto/16 :goto_cfe

    :sswitch_df2
    const-string/jumbo v6, "getWifiAutoSwitchDelay"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cfe

    const/16 v5, 0x11

    goto/16 :goto_cfe

    :sswitch_e01
    const-string/jumbo v6, "getLockScreenHiddenItems"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cfe

    const/16 v5, 0x12

    goto/16 :goto_cfe

    :sswitch_e10
    const-string/jumbo v6, "getToastEnabledState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cfe

    const/16 v5, 0x13

    goto/16 :goto_cfe

    :sswitch_e1f
    const-string/jumbo v6, "getToastShowPackageNameState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cfe

    const/16 v5, 0x14

    goto/16 :goto_cfe

    :sswitch_e2e
    const-string/jumbo v6, "getToastGravityEnabledState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cfe

    const/16 v5, 0x15

    goto/16 :goto_cfe

    :sswitch_e3d
    const-string/jumbo v6, "getToastGravity"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cfe

    const/16 v5, 0x16

    goto/16 :goto_cfe

    :sswitch_e4c
    const-string/jumbo v6, "getToastGravityXOffset"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cfe

    const/16 v5, 0x17

    goto/16 :goto_cfe

    :sswitch_e5b
    const-string/jumbo v6, "getToastGravityYOffset"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cfe

    const/16 v5, 0x18

    goto/16 :goto_cfe

    :sswitch_e6a
    const-string/jumbo v6, "getAppBlockDownloadState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cfe

    const/16 v5, 0x19

    goto/16 :goto_cfe

    :sswitch_e79
    const-string/jumbo v6, "getAppBlockDownloadNamespaces"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cfe

    const/16 v5, 0x1a

    goto/16 :goto_cfe

    :sswitch_e88
    const-string/jumbo v6, "getEthernetState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cfe

    const/16 v5, 0x1b

    goto/16 :goto_cfe

    :sswitch_e97
    const-string/jumbo v6, "getEthernetConfigurationType"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cfe

    const/16 v5, 0x1c

    goto/16 :goto_cfe

    :sswitch_ea6
    const-string/jumbo v6, "getSealedHardKeyIntentState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cfe

    const/16 v5, 0x1d

    goto/16 :goto_cfe

    :sswitch_eb5
    const-string/jumbo v6, "getSealedVolumeKeyAppState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cfe

    const/16 v5, 0x1e

    goto/16 :goto_cfe

    :sswitch_ec4
    const-string/jumbo v6, "getSettingsEnabledItems"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cfe

    const/16 v5, 0x1f

    goto/16 :goto_cfe

    :sswitch_ed3
    const-string/jumbo v6, "getSealedVolumeKeyAppsList"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cfe

    const/16 v5, 0x20

    goto/16 :goto_cfe

    .line 1176
    :pswitch_ee2
    const/16 v72, 0x1

    .line 1179
    .restart local v72    # "returnState":Z
    :try_start_ee4
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSealedNotificationMessagesState()Z
    :try_end_ee7
    .catch Landroid/os/RemoteException; {:try_start_ee4 .. :try_end_ee7} :catch_f0b

    move-result v72

    .line 1186
    :goto_ee8
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedNotificationMessagesState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1189
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v72    # "returnState":Z
    :cond_f07
    :goto_f07
    move-object/from16 v5, v49

    .line 1945
    goto/16 :goto_67

    .line 1180
    .restart local v72    # "returnState":Z
    :catch_f0b
    move-exception v23

    .line 1181
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ee8

    .line 1198
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_f16
    if-eqz p4, :cond_f1e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_f23

    .line 1199
    :cond_f1e
    if-eqz p4, :cond_f20

    .line 1204
    :cond_f20
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 1207
    :cond_f23
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v60

    .line 1208
    .local v60, "paramReturnType":I
    const/16 v24, 0x0

    .line 1213
    .local v24, "fixedState":I
    :try_start_f2c
    move-object/from16 v0, v34

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getMultiWindowFixedState(I)I
    :try_end_f33
    .catch Landroid/os/RemoteException; {:try_start_f2c .. :try_end_f33} :catch_f54

    move-result v24

    .line 1220
    :goto_f34
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedMultiWindowFixedState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1223
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_f07

    .line 1214
    :catch_f54
    move-exception v23

    .line 1215
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with knoxCustomManager service: "

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f34

    .line 1232
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v24    # "fixedState":I
    .end local v60    # "paramReturnType":I
    :pswitch_f5f
    const/16 v72, -0x1

    .line 1235
    .local v72, "returnState":I
    :try_start_f61
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getPowerDialogItems()I
    :try_end_f64
    .catch Landroid/os/RemoteException; {:try_start_f61 .. :try_end_f64} :catch_f85

    move-result v72

    .line 1242
    :goto_f65
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedPowerDialogItems"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1245
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_f07

    .line 1236
    :catch_f85
    move-exception v23

    .line 1237
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f65

    .line 1254
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_f90
    const/16 v72, 0x0

    .line 1257
    .local v72, "returnState":Z
    :try_start_f92
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getPowerDialogCustomItemsState()Z
    :try_end_f95
    .catch Landroid/os/RemoteException; {:try_start_f92 .. :try_end_f95} :catch_fb7

    move-result v72

    .line 1264
    :goto_f96
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedPowerDialogCustomItemsState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1267
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f07

    .line 1258
    :catch_fb7
    move-exception v23

    .line 1259
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f96

    .line 1276
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_fc2
    const/16 v70, 0x0

    .line 1279
    .local v70, "returnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    :try_start_fc4
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getPowerDialogCustomItems()Ljava/util/List;
    :try_end_fc7
    .catch Landroid/os/RemoteException; {:try_start_fc4 .. :try_end_fc7} :catch_1002

    move-result-object v70

    .line 1284
    :goto_fc8
    if-eqz v70, :cond_fca

    .line 1290
    :cond_fca
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedPowerDialogCustomItems"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1294
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v70, :cond_f07

    invoke-interface/range {v70 .. v70}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f07

    .line 1296
    invoke-interface/range {v70 .. v70}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .restart local v30    # "i$":Ljava/util/Iterator;
    :goto_fe6
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f07

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;

    .line 1297
    .local v78, "value":Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v78 .. v78}, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_fe6

    .line 1280
    .end local v30    # "i$":Ljava/util/Iterator;
    .end local v78    # "value":Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    :catch_1002
    move-exception v23

    .line 1281
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_fc8

    .line 1308
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v70    # "returnList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    :pswitch_100d
    const/16 v72, 0x0

    .line 1311
    .restart local v72    # "returnState":Z
    :try_start_100f
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getExtendedCallInfoState()Z
    :try_end_1012
    .catch Landroid/os/RemoteException; {:try_start_100f .. :try_end_1012} :catch_1034

    move-result v72

    .line 1318
    :goto_1013
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getExtendedCallInfoState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1321
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f07

    .line 1312
    :catch_1034
    move-exception v23

    .line 1313
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1013

    .line 1330
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_103f
    const/16 v72, 0x0

    .line 1333
    .local v72, "returnState":I
    :try_start_1041
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSettingsHiddenState()I
    :try_end_1044
    .catch Landroid/os/RemoteException; {:try_start_1041 .. :try_end_1044} :catch_1066

    move-result v72

    .line 1340
    :goto_1045
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSettingsHiddenState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1343
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f07

    .line 1334
    :catch_1066
    move-exception v23

    .line 1335
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1045

    .line 1352
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_1071
    const/16 v72, -0x1

    .line 1355
    .restart local v72    # "returnState":I
    :try_start_1073
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getHideNotificationMessages()I
    :try_end_1076
    .catch Landroid/os/RemoteException; {:try_start_1073 .. :try_end_1076} :catch_1098

    move-result v72

    .line 1362
    :goto_1077
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedHideNotificationMessages"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1365
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f07

    .line 1356
    :catch_1098
    move-exception v23

    .line 1357
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1077

    .line 1374
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_10a3
    const/16 v72, 0x1

    .line 1377
    .local v72, "returnState":Z
    :try_start_10a5
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getCheckCoverPopupState()Z
    :try_end_10a8
    .catch Landroid/os/RemoteException; {:try_start_10a5 .. :try_end_10a8} :catch_10ca

    move-result v72

    .line 1384
    :goto_10a9
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getCheckCoverPopupState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1387
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f07

    .line 1378
    :catch_10ca
    move-exception v23

    .line 1379
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10a9

    .line 1396
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_10d5
    const/16 v73, 0x0

    .line 1399
    .restart local v73    # "returnString":Ljava/lang/String;
    :try_start_10d7
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getRecentLongPressActivity()Ljava/lang/String;
    :try_end_10da
    .catch Landroid/os/RemoteException; {:try_start_10d7 .. :try_end_10da} :catch_10f8

    move-result-object v73

    .line 1406
    :goto_10db
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getRecentLongPressActivity"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1409
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v73, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f07

    .line 1400
    :catch_10f8
    move-exception v23

    .line 1401
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10db

    .line 1418
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v73    # "returnString":Ljava/lang/String;
    :pswitch_1103
    const/16 v72, -0x1

    .line 1421
    .local v72, "returnState":I
    :try_start_1105
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getRecentLongPressMode()I
    :try_end_1108
    .catch Landroid/os/RemoteException; {:try_start_1105 .. :try_end_1108} :catch_112a

    move-result v72

    .line 1428
    :goto_1109
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getRecentLongPressMode"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1431
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f07

    .line 1422
    :catch_112a
    move-exception v23

    .line 1423
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1109

    .line 1440
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_1135
    const/16 v72, 0x0

    .line 1443
    .local v72, "returnState":Z
    :try_start_1137
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getVolumeButtonRotationState()Z
    :try_end_113a
    .catch Landroid/os/RemoteException; {:try_start_1137 .. :try_end_113a} :catch_115c

    move-result v72

    .line 1450
    :goto_113b
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getVolumeButtonRotationState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1453
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f07

    .line 1444
    :catch_115c
    move-exception v23

    .line 1445
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_113b

    .line 1462
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_1167
    const/16 v72, 0x1

    .line 1465
    .restart local v72    # "returnState":Z
    :try_start_1169
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getGearNotificationState()Z
    :try_end_116c
    .catch Landroid/os/RemoteException; {:try_start_1169 .. :try_end_116c} :catch_118e

    move-result v72

    .line 1472
    :goto_116d
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getGearNotificationState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1475
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f07

    .line 1466
    :catch_118e
    move-exception v23

    .line 1467
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_116d

    .line 1484
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_1199
    const/16 v72, 0x0

    .line 1487
    .restart local v72    # "returnState":Z
    :try_start_119b
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getScreenOffOnHomeLongPressState()Z
    :try_end_119e
    .catch Landroid/os/RemoteException; {:try_start_119b .. :try_end_119e} :catch_11c0

    move-result v72

    .line 1494
    :goto_119f
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getScreenOffOnHomeLongPressState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1497
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f07

    .line 1488
    :catch_11c0
    move-exception v23

    .line 1489
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_119f

    .line 1506
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_11cb
    const/16 v72, 0x0

    .line 1509
    .restart local v72    # "returnState":Z
    :try_start_11cd
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getScreenOffOnStatusBarDoubleTapState()Z
    :try_end_11d0
    .catch Landroid/os/RemoteException; {:try_start_11cd .. :try_end_11d0} :catch_11f2

    move-result v72

    .line 1516
    :goto_11d1
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getScreenOffOnStatusBarDoubleTapState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1519
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f07

    .line 1510
    :catch_11f2
    move-exception v23

    .line 1511
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11d1

    .line 1528
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_11fd
    const/16 v72, 0x0

    .line 1531
    .restart local v72    # "returnState":Z
    :try_start_11ff
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getWifiAutoSwitchState()Z
    :try_end_1202
    .catch Landroid/os/RemoteException; {:try_start_11ff .. :try_end_1202} :catch_1224

    move-result v72

    .line 1538
    :goto_1203
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getWifiAutoSwitchState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1541
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f07

    .line 1532
    :catch_1224
    move-exception v23

    .line 1533
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1203

    .line 1550
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_122f
    const/16 v72, -0xc8

    .line 1553
    .local v72, "returnState":I
    :try_start_1231
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getWifiAutoSwitchThreshold()I
    :try_end_1234
    .catch Landroid/os/RemoteException; {:try_start_1231 .. :try_end_1234} :catch_1256

    move-result v72

    .line 1560
    :goto_1235
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getWifiAutoSwitchThreshold"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1563
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f07

    .line 1554
    :catch_1256
    move-exception v23

    .line 1555
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1235

    .line 1572
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_1261
    const/16 v72, 0x14

    .line 1575
    .restart local v72    # "returnState":I
    :try_start_1263
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getWifiAutoSwitchDelay()I
    :try_end_1266
    .catch Landroid/os/RemoteException; {:try_start_1263 .. :try_end_1266} :catch_1288

    move-result v72

    .line 1582
    :goto_1267
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getWifiAutoSwitchDelay"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1585
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f07

    .line 1576
    :catch_1288
    move-exception v23

    .line 1577
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1267

    .line 1594
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_1293
    const/16 v72, 0x0

    .line 1597
    .restart local v72    # "returnState":I
    :try_start_1295
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getLockScreenHiddenItems()I
    :try_end_1298
    .catch Landroid/os/RemoteException; {:try_start_1295 .. :try_end_1298} :catch_12ba

    move-result v72

    .line 1604
    :goto_1299
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getLockScreenHiddenItems"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1607
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f07

    .line 1598
    :catch_12ba
    move-exception v23

    .line 1599
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1299

    .line 1616
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_12c5
    const/16 v72, 0x1

    .line 1619
    .local v72, "returnState":Z
    :try_start_12c7
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getToastEnabledState()Z
    :try_end_12ca
    .catch Landroid/os/RemoteException; {:try_start_12c7 .. :try_end_12ca} :catch_12ec

    move-result v72

    .line 1626
    :goto_12cb
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getToastEnabledState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1629
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f07

    .line 1620
    :catch_12ec
    move-exception v23

    .line 1621
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12cb

    .line 1638
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_12f7
    const/16 v72, 0x0

    .line 1641
    .restart local v72    # "returnState":Z
    :try_start_12f9
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getToastShowPackageNameState()Z
    :try_end_12fc
    .catch Landroid/os/RemoteException; {:try_start_12f9 .. :try_end_12fc} :catch_131e

    move-result v72

    .line 1648
    :goto_12fd
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getToastShowPackageNameState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1651
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f07

    .line 1642
    :catch_131e
    move-exception v23

    .line 1643
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12fd

    .line 1660
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_1329
    const/16 v72, 0x0

    .line 1663
    .restart local v72    # "returnState":Z
    :try_start_132b
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getToastGravityEnabledState()Z
    :try_end_132e
    .catch Landroid/os/RemoteException; {:try_start_132b .. :try_end_132e} :catch_1350

    move-result v72

    .line 1670
    :goto_132f
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getToastGravityEnabledState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1673
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f07

    .line 1664
    :catch_1350
    move-exception v23

    .line 1665
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_132f

    .line 1682
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_135b
    const/16 v72, 0x0

    .line 1685
    .local v72, "returnState":I
    :try_start_135d
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getToastGravity()I
    :try_end_1360
    .catch Landroid/os/RemoteException; {:try_start_135d .. :try_end_1360} :catch_1382

    move-result v72

    .line 1692
    :goto_1361
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getToastGravity"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1695
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f07

    .line 1686
    :catch_1382
    move-exception v23

    .line 1687
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1361

    .line 1704
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_138d
    const/16 v72, 0x0

    .line 1707
    .restart local v72    # "returnState":I
    :try_start_138f
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getToastGravityXOffset()I
    :try_end_1392
    .catch Landroid/os/RemoteException; {:try_start_138f .. :try_end_1392} :catch_13b4

    move-result v72

    .line 1714
    :goto_1393
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getToastGravityXOffset"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1717
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f07

    .line 1708
    :catch_13b4
    move-exception v23

    .line 1709
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1393

    .line 1726
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_13bf
    const/16 v72, 0x0

    .line 1729
    .restart local v72    # "returnState":I
    :try_start_13c1
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getToastGravityYOffset()I
    :try_end_13c4
    .catch Landroid/os/RemoteException; {:try_start_13c1 .. :try_end_13c4} :catch_13e6

    move-result v72

    .line 1736
    :goto_13c5
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getToastGravityYOffset"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1739
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f07

    .line 1730
    :catch_13e6
    move-exception v23

    .line 1731
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13c5

    .line 1748
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_13f1
    const/16 v72, 0x0

    .line 1751
    .local v72, "returnState":Z
    :try_start_13f3
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getAppBlockDownloadState()Z
    :try_end_13f6
    .catch Landroid/os/RemoteException; {:try_start_13f3 .. :try_end_13f6} :catch_1418

    move-result v72

    .line 1758
    :goto_13f7
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getAppBlockDownloadState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1761
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f07

    .line 1752
    :catch_1418
    move-exception v23

    .line 1753
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13f7

    .line 1770
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_1423
    const/16 v71, 0x0

    .line 1773
    .restart local v71    # "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1425
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getAppBlockDownloadNamespaces()Ljava/util/List;
    :try_end_1428
    .catch Landroid/os/RemoteException; {:try_start_1425 .. :try_end_1428} :catch_145f

    move-result-object v71

    .line 1778
    :goto_1429
    if-eqz v71, :cond_142b

    .line 1784
    :cond_142b
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getAppBlockDownloadNamespaces"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1788
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v71, :cond_f07

    invoke-interface/range {v71 .. v71}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f07

    .line 1790
    invoke-interface/range {v71 .. v71}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .restart local v30    # "i$":Ljava/util/Iterator;
    :goto_1447
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f07

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Ljava/lang/String;

    .line 1791
    .local v78, "value":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v78, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1447

    .line 1774
    .end local v30    # "i$":Ljava/util/Iterator;
    .end local v78    # "value":Ljava/lang/String;
    :catch_145f
    move-exception v23

    .line 1775
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1429

    .line 1802
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v71    # "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_146a
    const/16 v72, 0x1

    .line 1805
    .restart local v72    # "returnState":Z
    :try_start_146c
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getEthernetState()Z
    :try_end_146f
    .catch Landroid/os/RemoteException; {:try_start_146c .. :try_end_146f} :catch_1491

    move-result v72

    .line 1812
    :goto_1470
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getEthernetState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1815
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f07

    .line 1806
    :catch_1491
    move-exception v23

    .line 1807
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1470

    .line 1824
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_149c
    const/16 v72, 0x0

    .line 1827
    .local v72, "returnState":I
    :try_start_149e
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getEthernetConfigurationType()I
    :try_end_14a1
    .catch Landroid/os/RemoteException; {:try_start_149e .. :try_end_14a1} :catch_14c3

    move-result v72

    .line 1834
    :goto_14a2
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getEthernetConfigurationType"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1837
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f07

    .line 1828
    :catch_14c3
    move-exception v23

    .line 1829
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14a2

    .line 1846
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_14ce
    const/16 v72, 0x0

    .line 1849
    .local v72, "returnState":Z
    :try_start_14d0
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getHardKeyIntentState()Z
    :try_end_14d3
    .catch Landroid/os/RemoteException; {:try_start_14d0 .. :try_end_14d3} :catch_14f5

    move-result v72

    .line 1856
    :goto_14d4
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedHardKeyIntentState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1859
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f07

    .line 1850
    :catch_14f5
    move-exception v23

    .line 1851
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14d4

    .line 1868
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_1500
    const/16 v72, 0x0

    .line 1871
    .restart local v72    # "returnState":Z
    :try_start_1502
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getVolumeKeyAppState()Z
    :try_end_1505
    .catch Landroid/os/RemoteException; {:try_start_1502 .. :try_end_1505} :catch_1527

    move-result v72

    .line 1878
    :goto_1506
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedVolumeKeyAppState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1881
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f07

    .line 1872
    :catch_1527
    move-exception v23

    .line 1873
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1506

    .line 1890
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":Z
    :pswitch_1532
    const/16 v72, 0x0

    .line 1893
    .local v72, "returnState":I
    :try_start_1534
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getSettingsEnabledItems()I
    :try_end_1537
    .catch Landroid/os/RemoteException; {:try_start_1534 .. :try_end_1537} :catch_1559

    move-result v72

    .line 1900
    :goto_1538
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSettingsEnabledItems"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1903
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f07

    .line 1894
    :catch_1559
    move-exception v23

    .line 1895
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1538

    .line 1912
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v72    # "returnState":I
    :pswitch_1564
    const/16 v71, 0x0

    .line 1915
    .restart local v71    # "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1566
    invoke-interface/range {v34 .. v34}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager;->getVolumeKeyAppsList()Ljava/util/List;
    :try_end_1569
    .catch Landroid/os/RemoteException; {:try_start_1566 .. :try_end_1569} :catch_15a0

    move-result-object v71

    .line 1920
    :goto_156a
    if-eqz v71, :cond_156c

    .line 1926
    :cond_156c
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSealedVolumeKeyAppsList"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1930
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v71, :cond_f07

    invoke-interface/range {v71 .. v71}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f07

    .line 1932
    invoke-interface/range {v71 .. v71}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .restart local v30    # "i$":Ljava/util/Iterator;
    :goto_1588
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f07

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Ljava/lang/String;

    .line 1933
    .restart local v78    # "value":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v78, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1588

    .line 1916
    .end local v30    # "i$":Ljava/util/Iterator;
    .end local v78    # "value":Ljava/lang/String;
    :catch_15a0
    move-exception v23

    .line 1917
    .restart local v23    # "e":Landroid/os/RemoteException;
    const-string v5, "SecContentProvider2"

    const-string v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v23

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_156a

    .line 1947
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v71    # "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_15ab
    if-nez p3, :cond_66

    goto/16 :goto_66

    .line 1954
    :pswitch_15af
    const-string v5, "application_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 1956
    .local v4, "lApplicationPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-eqz v4, :cond_66

    .line 1957
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_36bc

    :cond_15c1
    :goto_15c1
    packed-switch v5, :pswitch_data_3716

    .line 2320
    const-string v5, "SecContentProvider2"

    const-string/jumbo v6, "return null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 1957
    :sswitch_15cf
    const-string/jumbo v6, "getApplicationUninstallationEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15c1

    const/4 v5, 0x0

    goto :goto_15c1

    :sswitch_15dc
    const-string/jumbo v6, "isApplicationInstalled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15c1

    const/4 v5, 0x1

    goto :goto_15c1

    :sswitch_15e9
    const-string/jumbo v6, "isIntentDisabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15c1

    const/4 v5, 0x2

    goto :goto_15c1

    :sswitch_15f6
    const-string/jumbo v6, "getApplicationNotificationMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15c1

    const/4 v5, 0x3

    goto :goto_15c1

    :sswitch_1603
    const-string/jumbo v6, "getAppInstallToSdCard"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15c1

    const/4 v5, 0x4

    goto :goto_15c1

    :sswitch_1610
    const-string/jumbo v6, "isApplicationForceStopDisabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15c1

    const/4 v5, 0x5

    goto :goto_15c1

    :sswitch_161d
    const-string/jumbo v6, "isApplicationClearDataDisabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15c1

    const/4 v5, 0x6

    goto :goto_15c1

    :sswitch_162a
    const-string/jumbo v6, "isApplicationClearCacheDisabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15c1

    const/4 v5, 0x7

    goto :goto_15c1

    :sswitch_1637
    const-string/jumbo v6, "getApplicationNameFromDb"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15c1

    const/16 v5, 0x8

    goto/16 :goto_15c1

    :sswitch_1646
    const-string/jumbo v6, "isPackageUpdateAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15c1

    const/16 v5, 0x9

    goto/16 :goto_15c1

    :sswitch_1655
    const-string/jumbo v6, "getApplicationComponentState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15c1

    const/16 v5, 0xa

    goto/16 :goto_15c1

    :sswitch_1664
    const-string/jumbo v6, "getApplicationStateEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15c1

    const/16 v5, 0xb

    goto/16 :goto_15c1

    :sswitch_1673
    const-string/jumbo v6, "isUsbDevicePermittedForPackage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15c1

    const/16 v5, 0xc

    goto/16 :goto_15c1

    :sswitch_1682
    const-string/jumbo v6, "getApplicationIconFromDb"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15c1

    const/16 v5, 0xd

    goto/16 :goto_15c1

    :sswitch_1691
    const-string/jumbo v6, "isChangeSmsDefaultAppAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15c1

    const/16 v5, 0xe

    goto/16 :goto_15c1

    :sswitch_16a0
    const-string/jumbo v6, "isChangeAssistDefaultAppAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15c1

    const/16 v5, 0xf

    goto/16 :goto_15c1

    :sswitch_16af
    const-string/jumbo v6, "isApplicationSetToDefault"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15c1

    const/16 v5, 0x10

    goto/16 :goto_15c1

    :sswitch_16be
    const-string/jumbo v6, "getDefaultApplicationInternal"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15c1

    const/16 v5, 0x11

    goto/16 :goto_15c1

    :sswitch_16cd
    const-string/jumbo v6, "getApplicationStateDisabledList"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15c1

    const/16 v5, 0x12

    goto/16 :goto_15c1

    :sswitch_16dc
    const-string/jumbo v6, "getApplicationInstallUninstallList"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15c1

    const/16 v5, 0x13

    goto/16 :goto_15c1

    :sswitch_16eb
    const-string/jumbo v6, "getAppInstallationMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15c1

    const/16 v5, 0x14

    goto/16 :goto_15c1

    :sswitch_16fa
    const-string/jumbo v6, "getApplicationUninstallationMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15c1

    const/16 v5, 0x15

    goto/16 :goto_15c1

    .line 1959
    :pswitch_1709
    if-eqz p4, :cond_1711

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1714

    .line 1960
    :cond_1711
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 1962
    :cond_1714
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v67

    .line 1965
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getApplicationUninstallationEnabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1968
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v67    # "result":Z
    :cond_1741
    :goto_1741
    move-object/from16 v5, v49

    .line 2324
    goto/16 :goto_67

    .line 1974
    :pswitch_1745
    if-eqz p4, :cond_174d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1750

    .line 1975
    :cond_174d
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 1977
    :cond_1750
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v67

    .line 1980
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isApplicationInstalled"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1983
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1741

    .line 1989
    .end local v67    # "result":Z
    :pswitch_177e
    if-eqz p4, :cond_1786

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1789

    .line 1990
    :cond_1786
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 1991
    :cond_1789
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isIntentDisabled(Landroid/content/Intent;)Z

    move-result v67

    .line 1995
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isIntentDisabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1998
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1741

    .line 2005
    .end local v67    # "result":Z
    :pswitch_17b6
    if-eqz p4, :cond_17be

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_17c1

    .line 2006
    :cond_17be
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2008
    :cond_17c1
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationNotificationMode(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v66

    .line 2011
    .local v66, "res":I
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getApplicationNotificationMode"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2014
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1741

    .line 2022
    .end local v66    # "res":I
    :pswitch_17f4
    const/16 v67, 0x1

    .line 2025
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getAppInstallToSdCard"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2028
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1741

    .line 2035
    .end local v67    # "result":Z
    :pswitch_1817
    if-eqz p4, :cond_1820

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x5

    if-gt v5, v6, :cond_1823

    .line 2036
    :cond_1820
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2038
    :cond_1823
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    aget-object v7, p4, v7

    const/4 v8, 0x3

    aget-object v8, p4, v8

    const/4 v9, 0x4

    aget-object v9, p4, v9

    const/4 v10, 0x5

    aget-object v10, p4, v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v67

    .line 2044
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isApplicationForceStopDisabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2047
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1741

    .line 2054
    .end local v67    # "result":Z
    :pswitch_1862
    if-eqz p4, :cond_186b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_186e

    .line 2055
    :cond_186b
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2057
    :cond_186e
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationClearDataDisabled(Ljava/lang/String;IZ)Z

    move-result v67

    .line 2060
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isApplicationClearDataDisabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2063
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1741

    .line 2070
    .end local v67    # "result":Z
    :pswitch_18a4
    if-eqz p4, :cond_18ad

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_18b0

    .line 2071
    :cond_18ad
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2073
    :cond_18b0
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationClearCacheDisabled(Ljava/lang/String;IZ)Z

    move-result v67

    .line 2076
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isApplicationClearCacheDisabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2079
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1741

    .line 2086
    .end local v67    # "result":Z
    :pswitch_18e6
    if-eqz p4, :cond_18ef

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_18f2

    .line 2087
    :cond_18ef
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2089
    :cond_18f2
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v69

    .line 2092
    .local v69, "resultString":Ljava/lang/String;
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getApplicationNameFromDb"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2095
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v69, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1741

    .line 2102
    .end local v69    # "resultString":Ljava/lang/String;
    :pswitch_191d
    if-eqz p4, :cond_1926

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_1929

    .line 2103
    :cond_1926
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2105
    :cond_1929
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isPackageUpdateAllowed(Ljava/lang/String;Z)Z

    move-result v67

    .line 2108
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isPackageUpdateAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2111
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1741

    .line 2118
    .end local v67    # "result":Z
    :pswitch_1958
    if-eqz p4, :cond_1960

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1963

    .line 2119
    :cond_1960
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2121
    :cond_1963
    new-instance v6, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {v4, v6, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationComponentState(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)Z

    move-result v67

    .line 2125
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getApplicationComponentState"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2128
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1741

    .line 2135
    .end local v67    # "result":Z
    :pswitch_1998
    if-eqz p4, :cond_19a0

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_19a3

    .line 2136
    :cond_19a0
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2138
    :cond_19a3
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v67

    .line 2141
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getApplicationStateEnabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2144
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1741

    .line 2151
    .end local v67    # "result":Z
    :pswitch_19d2
    if-eqz p4, :cond_19db

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_19de

    .line 2152
    :cond_19db
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2154
    :cond_19de
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbDevice;

    const/4 v7, 0x2

    aget-object v7, p4, v7

    invoke-virtual {v4, v6, v5, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isUsbDevicePermittedForPackage(ILandroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    move-result v67

    .line 2158
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isUsbDevicePermittedForPackage"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2161
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1741

    .line 2167
    .end local v67    # "result":Z
    :pswitch_1a16
    if-eqz p4, :cond_1a1f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1a22

    .line 2168
    :cond_1a1f
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2170
    :cond_1a22
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationIconFromDb(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)[B

    move-result-object v65

    .line 2173
    .local v65, "re":[B
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getApplicationIconFromDb"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2176
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [[B

    const/4 v6, 0x0

    aput-object v65, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1741

    .line 2181
    .end local v65    # "re":[B
    :pswitch_1a4d
    if-eqz p4, :cond_1a56

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1a59

    .line 2182
    :cond_1a56
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2184
    :cond_1a59
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isChangeSmsDefaultAppAllowed(Ljava/lang/String;I)Z

    move-result v67

    .line 2188
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isChangeSmsDefaultAppAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2191
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1741

    .line 2196
    .end local v67    # "result":Z
    :pswitch_1a88
    if-eqz p4, :cond_1a91

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1a94

    .line 2197
    :cond_1a91
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2199
    :cond_1a94
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isChangeAssistDefaultAppAllowed(I)Z

    move-result v67

    .line 2203
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isChangeAssistDefaultAppAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2206
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1741

    .line 2211
    .end local v67    # "result":Z
    :pswitch_1ac0
    if-eqz p4, :cond_1ac9

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1acc

    .line 2212
    :cond_1ac9
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2214
    :cond_1acc
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationSetToDefault(Ljava/lang/String;I)Z

    move-result v67

    .line 2218
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isApplicationSetToDefault"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2221
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1741

    .line 2226
    .end local v67    # "result":Z
    :pswitch_1afb
    if-eqz p4, :cond_1b04

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1b07

    .line 2227
    :cond_1b04
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2230
    :cond_1b07
    const/16 v33, 0x0

    .line 2232
    .local v33, "intent":Landroid/content/Intent;
    const/4 v5, 0x0

    :try_start_1b0a
    aget-object v5, p4, v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1b10
    .catch Ljava/net/URISyntaxException; {:try_start_1b0a .. :try_end_1b10} :catch_1b41

    move-result-object v33

    .line 2237
    :goto_1b11
    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v33

    invoke-virtual {v4, v0, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getDefaultApplicationInternal(Landroid/content/Intent;I)Landroid/content/ComponentName;

    move-result-object v20

    .line 2241
    .local v20, "compName":Landroid/content/ComponentName;
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getDefaultApplicationInternal"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2244
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v20, :cond_1741

    .line 2245
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1741

    .line 2233
    .end local v20    # "compName":Landroid/content/ComponentName;
    :catch_1b41
    move-exception v23

    .line 2234
    .local v23, "e":Ljava/net/URISyntaxException;
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "URISyntaxException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b11

    .line 2251
    .end local v23    # "e":Ljava/net/URISyntaxException;
    .end local v33    # "intent":Landroid/content/Intent;
    :pswitch_1b5d
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateDisabledList(I)Ljava/util/List;

    move-result-object v12

    .line 2253
    .local v12, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v12, :cond_1bb2

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1bb2

    .line 2255
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getApplicationStateDisabledList"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2258
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .restart local v30    # "i$":Ljava/util/Iterator;
    :goto_1b7f
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1741

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Ljava/lang/String;

    .line 2259
    .restart local v78    # "value":Ljava/lang/String;
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getApplicationStateDisabledList value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v78

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v78, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1b7f

    .line 2265
    .end local v30    # "i$":Ljava/util/Iterator;
    .end local v78    # "value":Ljava/lang/String;
    :cond_1bb2
    const-string v5, "SecContentProvider2"

    const-string/jumbo v6, "getApplicationStateDisabledList null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2270
    .end local v12    # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1bbd
    if-eqz p4, :cond_1bc6

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1bd1

    .line 2271
    :cond_1bc6
    const-string v5, "SecContentProvider2"

    const-string/jumbo v6, "getApplicationInstallUninstallList selectionArgs is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2275
    :cond_1bd1
    const-string v5, "SecContentProvider2"

    const-string/jumbo v6, "getApplicationInstallUninstallList"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move/from16 v0, v17

    invoke-virtual {v4, v0, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationInstallUninstallList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v32

    .line 2280
    .local v32, "installUninstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getApplicationInstallUninstallList"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2284
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v32, :cond_1c31

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1c31

    .line 2285
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .restart local v30    # "i$":Ljava/util/Iterator;
    :goto_1bfe
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1741

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Ljava/lang/String;

    .line 2286
    .restart local v78    # "value":Ljava/lang/String;
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getApplicationInstallUninstallList value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v78

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v78, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1bfe

    .line 2293
    .end local v30    # "i$":Ljava/util/Iterator;
    .end local v78    # "value":Ljava/lang/String;
    :cond_1c31
    const-string v5, "SecContentProvider2"

    const-string/jumbo v6, "getApplicationInstallUninstallList null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2298
    .end local v32    # "installUninstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1c3c
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAppInstallationMode(Landroid/app/enterprise/ContextInfo;)I

    move-result v25

    .line 2301
    .local v25, "getAppInstall":I
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getAppInstallationMode"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2304
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1741

    .line 2309
    .end local v25    # "getAppInstall":I
    :pswitch_1c68
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationMode(Landroid/app/enterprise/ContextInfo;)I

    move-result v26

    .line 2312
    .local v26, "getAppUninstall":I
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getApplicationUninstallationMode"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2315
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1741

    .line 2329
    .end local v4    # "lApplicationPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .end local v26    # "getAppUninstall":I
    :pswitch_1c94
    const-string/jumbo v5, "eas_account_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 2331
    .local v38, "lEASEmailPolicy":Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    if-eqz v38, :cond_66

    if-eqz p3, :cond_66

    .line 2332
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_3746

    :cond_1ca9
    :goto_1ca9
    packed-switch v5, :pswitch_data_3780

    .line 2530
    const-string v5, "SecContentProvider2"

    const-string/jumbo v6, "return null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2332
    :sswitch_1cb7
    const-string/jumbo v6, "getRequiredSignedMIMEMessages"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ca9

    const/4 v5, 0x0

    goto :goto_1ca9

    :sswitch_1cc4
    const-string/jumbo v6, "getRequiredEncryptedMIMEMessages"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ca9

    const/4 v5, 0x1

    goto :goto_1ca9

    :sswitch_1cd1
    const-string/jumbo v6, "getForceSMIMECertificate"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ca9

    const/4 v5, 0x2

    goto :goto_1ca9

    :sswitch_1cde
    const-string/jumbo v6, "isIncomingAttachmentsAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ca9

    const/4 v5, 0x3

    goto :goto_1ca9

    :sswitch_1ceb
    const-string/jumbo v6, "getIncomingAttachmentSize"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ca9

    const/4 v5, 0x4

    goto :goto_1ca9

    :sswitch_1cf8
    const-string/jumbo v6, "getMaxCalendarAgeFilter"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ca9

    const/4 v5, 0x5

    goto :goto_1ca9

    :sswitch_1d05
    const-string/jumbo v6, "getMaxEmailBodyTruncationSize"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ca9

    const/4 v5, 0x6

    goto :goto_1ca9

    :sswitch_1d12
    const-string/jumbo v6, "getMaxEmailHTMLBodyTruncationSize"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ca9

    const/4 v5, 0x7

    goto :goto_1ca9

    :sswitch_1d1f
    const-string/jumbo v6, "getForceSMIMECertificateForSigning"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ca9

    const/16 v5, 0x8

    goto/16 :goto_1ca9

    :sswitch_1d2e
    const-string/jumbo v6, "getForceSMIMECertificateForEncryption"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ca9

    const/16 v5, 0x9

    goto/16 :goto_1ca9

    :sswitch_1d3d
    const-string/jumbo v6, "getAccountEmailPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ca9

    const/16 v5, 0xa

    goto/16 :goto_1ca9

    :sswitch_1d4c
    const-string/jumbo v6, "getAccountCertificatePassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ca9

    const/16 v5, 0xb

    goto/16 :goto_1ca9

    :sswitch_1d5b
    const-string/jumbo v6, "getMaxEmailAgeFilter"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ca9

    const/16 v5, 0xc

    goto/16 :goto_1ca9

    :sswitch_1d6a
    const-string/jumbo v6, "setAccountEmailPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1ca9

    const/16 v5, 0xd

    goto/16 :goto_1ca9

    .line 2334
    :pswitch_1d79
    if-eqz p4, :cond_1d81

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1d84

    .line 2335
    :cond_1d81
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2336
    :cond_1d84
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getRequireSignedSMIMEMessages(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v67

    .line 2340
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getRequiredSignedMIMEMessages"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2343
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v67    # "result":Z
    :goto_1db7
    move-object/from16 v5, v49

    .line 2534
    goto/16 :goto_67

    .line 2348
    :pswitch_1dbb
    if-eqz p4, :cond_1dc3

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1dc6

    .line 2349
    :cond_1dc3
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2350
    :cond_1dc6
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getRequireEncryptedSMIMEMessages(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v67

    .line 2354
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getRequiredEncryptedMIMEMessages"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2357
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1db7

    .line 2362
    .end local v67    # "result":Z
    :pswitch_1dfa
    if-eqz p4, :cond_1e02

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1e05

    .line 2363
    :cond_1e02
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2364
    :cond_1e05
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificate(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v67

    .line 2368
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getForceSMIMECertificate"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2371
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1db7

    .line 2376
    .end local v67    # "result":Z
    :pswitch_1e3a
    if-eqz p4, :cond_1e42

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1e45

    .line 2377
    :cond_1e42
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2378
    :cond_1e45
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isIncomingAttachmentsAllowed(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v67

    .line 2382
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isIncomingAttachmentsAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2385
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1db7

    .line 2390
    .end local v67    # "result":Z
    :pswitch_1e7a
    if-eqz p4, :cond_1e82

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1e85

    .line 2391
    :cond_1e82
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2392
    :cond_1e85
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getIncomingAttachmentsSize(Landroid/app/enterprise/ContextInfo;J)I

    move-result v66

    .line 2396
    .restart local v66    # "res":I
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getIncomingAttachmentSize"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2399
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1db7

    .line 2404
    .end local v66    # "res":I
    :pswitch_1eba
    if-eqz p4, :cond_1ec2

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1ec5

    .line 2405
    :cond_1ec2
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2406
    :cond_1ec5
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxCalendarAgeFilter(Landroid/app/enterprise/ContextInfo;J)I

    move-result v66

    .line 2410
    .restart local v66    # "res":I
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getMaxCalendarAgeFilter"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2413
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1db7

    .line 2418
    .end local v66    # "res":I
    :pswitch_1efa
    if-eqz p4, :cond_1f02

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1f05

    .line 2419
    :cond_1f02
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2420
    :cond_1f05
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailBodyTruncationSize(Landroid/app/enterprise/ContextInfo;J)I

    move-result v66

    .line 2424
    .restart local v66    # "res":I
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getMaxEmailBodyTruncationSize"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2427
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1db7

    .line 2432
    .end local v66    # "res":I
    :pswitch_1f3a
    if-eqz p4, :cond_1f42

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1f45

    .line 2433
    :cond_1f42
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2434
    :cond_1f45
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailHTMLBodyTruncationSize(Landroid/app/enterprise/ContextInfo;J)I

    move-result v66

    .line 2438
    .restart local v66    # "res":I
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getMaxEmailHTMLBodyTruncationSize"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2441
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1db7

    .line 2446
    .end local v66    # "res":I
    :pswitch_1f7a
    if-eqz p4, :cond_1f82

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1f85

    .line 2447
    :cond_1f82
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2448
    :cond_1f85
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForSigning(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v67

    .line 2452
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getForceSMIMECertificateForSigning"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2455
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1db7

    .line 2460
    .end local v67    # "result":Z
    :pswitch_1fba
    if-eqz p4, :cond_1fc2

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1fc5

    .line 2461
    :cond_1fc2
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2462
    :cond_1fc5
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForEncryption(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v67

    .line 2466
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getForceSMIMECertificateForEncryption"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2469
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1db7

    .line 2474
    .end local v67    # "result":Z
    :pswitch_1ffa
    if-eqz p4, :cond_2002

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_2005

    .line 2475
    :cond_2002
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2476
    :cond_2005
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getAccountEmailPassword(Landroid/app/enterprise/ContextInfo;J)Ljava/lang/String;

    move-result-object v63

    .line 2480
    .local v63, "passwd":Ljava/lang/String;
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getAccountEmailPassword"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2483
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v63, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1db7

    .line 2488
    .end local v63    # "passwd":Ljava/lang/String;
    :pswitch_2036
    if-eqz p4, :cond_203e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_2041

    .line 2489
    :cond_203e
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2490
    :cond_2041
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getAccountCertificatePassword(Landroid/app/enterprise/ContextInfo;J)Ljava/lang/String;

    move-result-object v19

    .line 2494
    .local v19, "certPasswd":Ljava/lang/String;
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getAccountCertificatePassword"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2497
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v19, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1db7

    .line 2502
    .end local v19    # "certPasswd":Ljava/lang/String;
    :pswitch_2072
    if-eqz p4, :cond_207a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_207d

    .line 2503
    :cond_207a
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2504
    :cond_207d
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailAgeFilter(Landroid/app/enterprise/ContextInfo;J)I

    move-result v66

    .line 2508
    .restart local v66    # "res":I
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getMaxEmailAgeFilter"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2511
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1db7

    .line 2516
    .end local v66    # "res":I
    :pswitch_20b2
    if-eqz p4, :cond_20bb

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_20be

    .line 2517
    :cond_20bb
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2518
    :cond_20be
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v50

    .line 2522
    .local v50, "long_res":J
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "setAccountEmailPassword"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2525
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v50 .. v51}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1db7

    .line 2538
    .end local v38    # "lEASEmailPolicy":Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
    .end local v50    # "long_res":J
    :pswitch_20ef
    const-string/jumbo v5, "wifi_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 2540
    .local v47, "lWifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-eqz v47, :cond_66

    if-eqz p3, :cond_66

    .line 2541
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_37a0

    :cond_2104
    :goto_2104
    packed-switch v5, :pswitch_data_37d2

    .line 2704
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2541
    :sswitch_210a
    const-string/jumbo v6, "getAllowUserPolicyChanges"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2104

    const/4 v5, 0x0

    goto :goto_2104

    :sswitch_2117
    const-string/jumbo v6, "getAllowUserProfiles"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2104

    const/4 v5, 0x1

    goto :goto_2104

    :sswitch_2124
    const-string/jumbo v6, "getAutomaticConnectionToWifi"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2104

    const/4 v5, 0x2

    goto :goto_2104

    :sswitch_2131
    const-string/jumbo v6, "getPasswordHidden"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2104

    const/4 v5, 0x3

    goto :goto_2104

    :sswitch_213e
    const-string/jumbo v6, "getPromptCredentialsEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2104

    const/4 v5, 0x4

    goto :goto_2104

    :sswitch_214b
    const-string/jumbo v6, "isEnterpriseNetwork"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2104

    const/4 v5, 0x5

    goto :goto_2104

    :sswitch_2158
    const-string/jumbo v6, "isWifiApSettingUserModificationAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2104

    const/4 v5, 0x6

    goto :goto_2104

    :sswitch_2165
    const-string/jumbo v6, "isWifiStateChangeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2104

    const/4 v5, 0x7

    goto :goto_2104

    :sswitch_2172
    const-string/jumbo v6, "isOpenWifiApAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2104

    const/16 v5, 0x8

    goto :goto_2104

    :sswitch_2180
    const-string/jumbo v6, "getAllSsidBlacklist"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2104

    const/16 v5, 0x9

    goto/16 :goto_2104

    :sswitch_218f
    const-string/jumbo v6, "getAllSsidWhitelist"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2104

    const/16 v5, 0xa

    goto/16 :goto_2104

    :sswitch_219e
    const-string/jumbo v6, "isWifiSsidRestrictionActive"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2104

    const/16 v5, 0xb

    goto/16 :goto_2104

    .line 2543
    :pswitch_21ad
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserPolicyChanges(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2546
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getAllowUserPolicyChanges"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2549
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v67    # "result":Z
    :cond_21d9
    :goto_21d9
    move-object/from16 v5, v49

    .line 2707
    goto/16 :goto_67

    .line 2554
    :pswitch_21dd
    if-eqz p4, :cond_21e5

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_21e8

    .line 2555
    :cond_21e5
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2556
    :cond_21e8
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v47

    move/from16 v1, v77

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserProfiles(Landroid/app/enterprise/ContextInfo;ZI)Z

    move-result v67

    .line 2560
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getAllowUserProfiles"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2563
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_21d9

    .line 2568
    .end local v67    # "result":Z
    :pswitch_221e
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAutomaticConnectionToWifi(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2571
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getAutomaticConnectionToWifi"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2574
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_21d9

    .line 2579
    .end local v67    # "result":Z
    :pswitch_224b
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPasswordHidden(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2582
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getPasswordHidden"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2585
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_21d9

    .line 2590
    .end local v67    # "result":Z
    :pswitch_2279
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPromptCredentialsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2593
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getPromptCredentialsEnabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2596
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_21d9

    .line 2601
    .end local v67    # "result":Z
    :pswitch_22a7
    if-eqz p4, :cond_22af

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_22b2

    .line 2602
    :cond_22af
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2603
    :cond_22b2
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v67

    .line 2606
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isEnterpriseNetwork"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2609
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_21d9

    .line 2614
    .end local v67    # "result":Z
    :pswitch_22dc
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiApSettingUserModificationAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2617
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isWifiApSettingUserModificationAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2620
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_21d9

    .line 2625
    .end local v67    # "result":Z
    :pswitch_230a
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2628
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isWifiStateChangeAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2631
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_21d9

    .line 2636
    .end local v67    # "result":Z
    :pswitch_2338
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isOpenWifiApAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2639
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isOpenWifiApAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2642
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_21d9

    .line 2647
    .end local v67    # "result":Z
    :pswitch_2366
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllSsidBlacklist(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v15

    .line 2650
    .local v15, "blacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getAllSsidBlacklist"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2654
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v15, :cond_23c1

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_23c1

    .line 2656
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .restart local v30    # "i$":Ljava/util/Iterator;
    :goto_238f
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21d9

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Ljava/lang/String;

    .line 2657
    .restart local v78    # "value":Ljava/lang/String;
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WIFIPOLICY_ALLSSIDBLACKLIST_METHOD = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v78

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v78, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_238f

    .line 2664
    .end local v30    # "i$":Ljava/util/Iterator;
    .end local v78    # "value":Ljava/lang/String;
    :cond_23c1
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_21d9

    .line 2670
    .end local v15    # "blacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_23cf
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllSsidWhitelist(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v79

    .line 2673
    .local v79, "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getAllSsidWhitelist"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2677
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v79, :cond_242a

    invoke-interface/range {v79 .. v79}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_242a

    .line 2679
    invoke-interface/range {v79 .. v79}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .restart local v30    # "i$":Ljava/util/Iterator;
    :goto_23f8
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21d9

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Ljava/lang/String;

    .line 2680
    .restart local v78    # "value":Ljava/lang/String;
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WIFIPOLICY_ALLSSIDWHITELIST_METHOD = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v78

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v78, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_23f8

    .line 2687
    .end local v30    # "i$":Ljava/util/Iterator;
    .end local v78    # "value":Ljava/lang/String;
    :cond_242a
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_21d9

    .line 2693
    .end local v79    # "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2438
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiSsidRestrictionActive(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2696
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isWifiSsidRestrictionActive"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2699
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_21d9

    .line 2711
    .end local v47    # "lWifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    .end local v67    # "result":Z
    :pswitch_2466
    const-string/jumbo v5, "kioskmode"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 2713
    .local v42, "lKioskModeService":Lcom/android/server/enterprise/kioskmode/KioskModeService;
    if-eqz v42, :cond_66

    .line 2714
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_37ee

    :cond_2479
    :goto_2479
    packed-switch v5, :pswitch_data_382c

    :goto_247c
    move-object/from16 v5, v49

    .line 2900
    goto/16 :goto_67

    .line 2714
    :sswitch_2480
    const-string/jumbo v6, "isNavigationBarHidden"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2479

    const/4 v5, 0x0

    goto :goto_2479

    :sswitch_248d
    const-string/jumbo v6, "isMultiWindowModeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2479

    const/4 v5, 0x1

    goto :goto_2479

    :sswitch_249a
    const-string/jumbo v6, "isMultiWindowModeAllowedAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2479

    const/4 v5, 0x2

    goto :goto_2479

    :sswitch_24a7
    const-string/jumbo v6, "isAirCommandModeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2479

    const/4 v5, 0x3

    goto :goto_2479

    :sswitch_24b4
    const-string/jumbo v6, "isAirViewModeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2479

    const/4 v5, 0x4

    goto :goto_2479

    :sswitch_24c1
    const-string/jumbo v6, "getBlockedHwKeysCache"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2479

    const/4 v5, 0x5

    goto :goto_2479

    :sswitch_24ce
    const-string/jumbo v6, "isTaskManagerAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2479

    const/4 v5, 0x6

    goto :goto_2479

    :sswitch_24db
    const-string/jumbo v6, "isKioskModeEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2479

    const/4 v5, 0x7

    goto :goto_2479

    :sswitch_24e8
    const-string/jumbo v6, "getKioskHomePackage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2479

    const/16 v5, 0x8

    goto :goto_2479

    :sswitch_24f6
    const-string/jumbo v6, "isNightClockAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2479

    const/16 v5, 0x9

    goto/16 :goto_2479

    :sswitch_2505
    const-string/jumbo v6, "isPeopleEdgeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2479

    const/16 v5, 0xa

    goto/16 :goto_2479

    :sswitch_2514
    const-string/jumbo v6, "isEdgeLightingAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2479

    const/16 v5, 0xb

    goto/16 :goto_2479

    :sswitch_2523
    const-string/jumbo v6, "isInformationStreamAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2479

    const/16 v5, 0xc

    goto/16 :goto_2479

    :sswitch_2532
    const-string/jumbo v6, "isAppsEdgeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2479

    const/16 v5, 0xd

    goto/16 :goto_2479

    :sswitch_2541
    const-string/jumbo v6, "isEdgeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2479

    const/16 v5, 0xe

    goto/16 :goto_2479

    .line 2716
    :pswitch_2550
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNavigationBarHidden(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2720
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isNavigationBarHidden"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2722
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_247c

    .line 2726
    .end local v67    # "result":Z
    :pswitch_257e
    if-eqz p4, :cond_2586

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_2589

    .line 2727
    :cond_2586
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2729
    :cond_2589
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v67

    .line 2733
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isMultiWindowModeAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2735
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_247c

    .line 2739
    .end local v67    # "result":Z
    :pswitch_25be
    if-eqz p4, :cond_25c7

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_25ca

    .line 2740
    :cond_25c7
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2742
    :cond_25ca
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowedAsUser(I)Z

    move-result v67

    .line 2743
    .restart local v67    # "result":Z
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isMultiWindowModeAllowedAsUser return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v67

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isMultiWindowModeAllowedAsUser"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2747
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_247c

    .line 2751
    .end local v67    # "result":Z
    :pswitch_2613
    if-nez p4, :cond_265e

    .line 2752
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2760
    .restart local v67    # "result":Z
    :goto_2622
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAirCommandModeAllowed return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v67

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isAirCommandModeAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2764
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_247c

    .line 2756
    .end local v67    # "result":Z
    :cond_265e
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2758
    .restart local v67    # "result":Z
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAirCommandModeAllowed uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2622

    .line 2768
    .end local v67    # "result":Z
    :pswitch_2691
    if-nez p4, :cond_26dc

    .line 2769
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirViewModeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2777
    .restart local v67    # "result":Z
    :goto_26a0
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAirViewModeAllowed return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v67

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isAirViewModeAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2781
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_247c

    .line 2773
    .end local v67    # "result":Z
    :cond_26dc
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirViewModeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2775
    .restart local v67    # "result":Z
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAirViewModeAllowed uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26a0

    .line 2785
    .end local v67    # "result":Z
    :pswitch_270f
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getBlockedHwKeysCache()Ljava/util/Map;

    move-result-object v68

    .line 2788
    .local v68, "resultMap":Ljava/util/Map;
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getBlockedHwKeysCache"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2790
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v68, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_247c

    .line 2794
    .end local v68    # "resultMap":Ljava/util/Map;
    :pswitch_2730
    if-eqz p4, :cond_2738

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_273b

    .line 2795
    :cond_2738
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2797
    :cond_273b
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isTaskManagerAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v67

    .line 2801
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isTaskManagerAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2803
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_247c

    .line 2807
    .end local v67    # "result":Z
    :pswitch_2770
    if-nez p4, :cond_27bb

    .line 2808
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2816
    .restart local v67    # "result":Z
    :goto_277f
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isKioskModeEnabled return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v67

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2818
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isKioskModeEnabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2820
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_247c

    .line 2812
    .end local v67    # "result":Z
    :cond_27bb
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2814
    .restart local v67    # "result":Z
    const-string v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isKioskModeEnabled uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_277f

    .line 2824
    .end local v67    # "result":Z
    :pswitch_27ee
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getKioskHomePackage(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v28

    .line 2828
    .local v28, "homePkg":Ljava/lang/String;
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getKioskHomePackage"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2830
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v28, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_247c

    .line 2835
    .end local v28    # "homePkg":Ljava/lang/String;
    :pswitch_2818
    const/4 v5, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNightClockAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2838
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isNightClockAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2841
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_247c

    .line 2846
    .end local v67    # "result":Z
    :pswitch_2840
    const/4 v5, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isPeopleEdgeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2849
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isPeopleEdgeAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2852
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_247c

    .line 2857
    .end local v67    # "result":Z
    :pswitch_2868
    const/4 v5, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeLightingAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2860
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isEdgeLightingAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2863
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_247c

    .line 2868
    .end local v67    # "result":Z
    :pswitch_2890
    const/4 v5, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isInformationStreamAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2871
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isInformationStreamAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2874
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_247c

    .line 2879
    .end local v67    # "result":Z
    :pswitch_28b8
    const/4 v5, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAppsEdgeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2882
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isAppsEdgeAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2885
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_247c

    .line 2890
    .end local v67    # "result":Z
    :pswitch_28e0
    const/4 v5, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 2893
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isEdgeAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2896
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_247c

    .line 2907
    .end local v42    # "lKioskModeService":Lcom/android/server/enterprise/kioskmode/KioskModeService;
    .end local v67    # "result":Z
    :pswitch_2908
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v41

    .line 2909
    .local v41, "lEnterpriseDeviceManagerService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    if-eqz v41, :cond_66

    if-eqz p3, :cond_66

    .line 2910
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_384e

    :cond_2918
    :goto_2918
    packed-switch v5, :pswitch_data_387c

    :cond_291b
    :goto_291b
    :pswitch_291b
    move-object/from16 v5, v49

    .line 3039
    goto/16 :goto_67

    .line 2910
    :sswitch_291f
    const-string/jumbo v6, "getAdminRemovable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2918

    const/4 v5, 0x0

    goto :goto_2918

    :sswitch_292c
    const-string/jumbo v6, "getActiveAdmins"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2918

    const/4 v5, 0x1

    goto :goto_2918

    :sswitch_2939
    const-string/jumbo v6, "getRemoveWarning"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2918

    const/4 v5, 0x2

    goto :goto_2918

    :sswitch_2946
    const-string/jumbo v6, "isAdminRemovable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2918

    const/4 v5, 0x3

    goto :goto_2918

    :sswitch_2953
    const-string/jumbo v6, "setActiveAdmin"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2918

    const/4 v5, 0x4

    goto :goto_2918

    :sswitch_2960
    const-string/jumbo v6, "removeActiveAdmin"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2918

    const/4 v5, 0x5

    goto :goto_2918

    :sswitch_296d
    const-string/jumbo v6, "setAdminRemovable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2918

    const/4 v5, 0x6

    goto :goto_2918

    :sswitch_297a
    const-string/jumbo v6, "updateAdminPermissions"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2918

    const/4 v5, 0x7

    goto :goto_2918

    :sswitch_2987
    const-string/jumbo v6, "getMyKnoxAdmin"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2918

    const/16 v5, 0x8

    goto :goto_2918

    :sswitch_2995
    const-string/jumbo v6, "isMdmAdminPresent"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2918

    const/16 v5, 0x9

    goto/16 :goto_2918

    :sswitch_29a4
    const-string/jumbo v6, "getEnterpriseSdkVer"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2918

    const/16 v5, 0xa

    goto/16 :goto_2918

    .line 2912
    :pswitch_29b3
    if-eqz p4, :cond_29bb

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_29be

    .line 2913
    :cond_29bb
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2914
    :cond_29be
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getAdminRemovable(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v67

    .line 2917
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getAdminRemovable"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2921
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_291b

    .line 2926
    .end local v67    # "result":Z
    :pswitch_29ef
    if-eqz p4, :cond_29f7

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_29fa

    .line 2927
    :cond_29f7
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2928
    :cond_29fa
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v48

    .line 2932
    .local v48, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getActiveAdmins"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2936
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v48, :cond_291b

    invoke-interface/range {v48 .. v48}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_291b

    .line 2938
    invoke-interface/range {v48 .. v48}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .restart local v30    # "i$":Ljava/util/Iterator;
    :goto_2a23
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_291b

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Landroid/content/ComponentName;

    .line 2939
    .local v78, "value":Landroid/content/ComponentName;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v78 .. v78}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2a23

    .line 2946
    .end local v30    # "i$":Ljava/util/Iterator;
    .end local v48    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v78    # "value":Landroid/content/ComponentName;
    :pswitch_2a3f
    if-eqz p4, :cond_2a48

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_2a4b

    .line 2947
    :cond_2a48
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2949
    :cond_2a4b
    const/4 v5, 0x0

    :try_start_2a4c
    aget-object v5, p4, v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/RemoteCallback;

    move-object/from16 v0, v41

    invoke-virtual {v0, v6, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    :try_end_2a60
    .catch Landroid/os/RemoteException; {:try_start_2a4c .. :try_end_2a60} :catch_2a62

    goto/16 :goto_291b

    .line 2951
    :catch_2a62
    move-exception v23

    .line 2953
    .local v23, "e":Landroid/os/RemoteException;
    invoke-virtual/range {v23 .. v23}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_291b

    .line 2957
    .end local v23    # "e":Landroid/os/RemoteException;
    :pswitch_2a68
    if-eqz p4, :cond_2a71

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_2a74

    .line 2958
    :cond_2a71
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2959
    :cond_2a74
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isAdminRemovable(Landroid/content/ComponentName;)Z

    move-result v67

    .line 2961
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isAdminRemovable"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2965
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_291b

    .line 2970
    .end local v67    # "result":Z
    :pswitch_2aa2
    if-eqz p4, :cond_2aab

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2aae

    .line 2971
    :cond_2aab
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2973
    :cond_2aae
    const/4 v5, 0x0

    :try_start_2aaf
    aget-object v5, p4, v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setActiveAdmin(Landroid/content/ComponentName;Z)V
    :try_end_2ac1
    .catch Landroid/os/RemoteException; {:try_start_2aaf .. :try_end_2ac1} :catch_2ac3

    goto/16 :goto_291b

    .line 2975
    :catch_2ac3
    move-exception v23

    .line 2977
    .restart local v23    # "e":Landroid/os/RemoteException;
    invoke-virtual/range {v23 .. v23}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_291b

    .line 2981
    .end local v23    # "e":Landroid/os/RemoteException;
    :pswitch_2ac9
    if-eqz p4, :cond_2ad2

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_2ad5

    .line 2982
    :cond_2ad2
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2984
    :cond_2ad5
    const/4 v5, 0x0

    :try_start_2ad6
    aget-object v5, p4, v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_2ae1
    .catch Landroid/os/RemoteException; {:try_start_2ad6 .. :try_end_2ae1} :catch_2ae3

    goto/16 :goto_291b

    .line 2985
    :catch_2ae3
    move-exception v23

    .line 2987
    .restart local v23    # "e":Landroid/os/RemoteException;
    invoke-virtual/range {v23 .. v23}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_291b

    .line 2991
    .end local v23    # "e":Landroid/os/RemoteException;
    :pswitch_2ae9
    if-eqz p4, :cond_2af2

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_2af5

    .line 2992
    :cond_2af2
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 2993
    :cond_2af5
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    aget-object v7, p4, v7

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z

    move-result v67

    .line 2996
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "setAdminRemovable"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2999
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_291b

    .line 3007
    .end local v67    # "result":Z
    :pswitch_2b2d
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getMyKnoxAdmin(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v11

    .line 3008
    .local v11, "admin":Ljava/lang/String;
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getMyKnoxAdmin"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3011
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v11, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_291b

    .line 3016
    .end local v11    # "admin":Ljava/lang/String;
    :pswitch_2b57
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v74

    .line 3018
    .local v74, "token":J
    :try_start_2b5b
    invoke-virtual/range {v41 .. v41}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isMdmAdminPresent()Z

    move-result v67

    .line 3019
    .restart local v67    # "result":Z
    new-instance v52, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v52

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V
    :try_end_2b6c
    .catchall {:try_start_2b5b .. :try_end_2b6c} :catchall_2b82

    .line 3022
    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    .local v52, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    :try_start_2b6d
    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_2b7b
    .catchall {:try_start_2b6d .. :try_end_2b7b} :catchall_3499

    .line 3026
    invoke-static/range {v74 .. v75}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v49, v52

    .line 3028
    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    goto/16 :goto_291b

    .line 3026
    .end local v67    # "result":Z
    :catchall_2b82
    move-exception v5

    :goto_2b83
    invoke-static/range {v74 .. v75}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 3030
    .end local v74    # "token":J
    :pswitch_2b87
    const-string v5, "16"

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v53

    .line 3031
    .local v53, "mdm_config_version":I
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getEnterpriseSdkVer"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3034
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_291b

    .line 3043
    .end local v41    # "lEnterpriseDeviceManagerService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v53    # "mdm_config_version":I
    :pswitch_2bae
    const-string/jumbo v5, "email_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/server/enterprise/email/EmailPolicy;

    .line 3045
    .local v40, "lEmailPolicy":Lcom/android/server/enterprise/email/EmailPolicy;
    if-eqz v40, :cond_66

    if-eqz p3, :cond_66

    .line 3046
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_3896

    :cond_2bc3
    :goto_2bc3
    packed-switch v5, :pswitch_data_38b4

    .line 3144
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 3046
    :sswitch_2bc9
    const-string/jumbo v6, "isAccountAdditionAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2bc3

    const/4 v5, 0x0

    goto :goto_2bc3

    :sswitch_2bd6
    const-string/jumbo v6, "getAllowEmailForwarding"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2bc3

    const/4 v5, 0x1

    goto :goto_2bc3

    :sswitch_2be3
    const-string/jumbo v6, "isEmailSettingsChangesAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2bc3

    const/4 v5, 0x2

    goto :goto_2bc3

    :sswitch_2bf0
    const-string/jumbo v6, "isEmailNotificationsEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2bc3

    const/4 v5, 0x3

    goto :goto_2bc3

    :sswitch_2bfd
    const-string/jumbo v6, "getAllowHtmlEmail"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2bc3

    const/4 v5, 0x4

    goto :goto_2bc3

    :sswitch_2c0a
    const-string/jumbo v6, "getEnterpriseExchangeAccountObject"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2bc3

    const/4 v5, 0x5

    goto :goto_2bc3

    :sswitch_2c17
    const-string/jumbo v6, "getEnterpriseEmailAccountObject"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2bc3

    const/4 v5, 0x6

    goto :goto_2bc3

    .line 3048
    :pswitch_2c24
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/email/EmailPolicy;->isAccountAdditionAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v67

    .line 3051
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isAccountAdditionAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3054
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v67    # "result":Z
    :goto_2c50
    move-object/from16 v5, v49

    .line 3147
    goto/16 :goto_67

    .line 3059
    :pswitch_2c54
    if-eqz p4, :cond_2c5c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_2c5f

    .line 3060
    :cond_2c5c
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 3061
    :cond_2c5f
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/email/EmailPolicy;->getAllowEmailForwarding(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v67

    .line 3065
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getAllowEmailForwarding"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3068
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2c50

    .line 3073
    .end local v67    # "result":Z
    :pswitch_2c8f
    if-eqz p4, :cond_2c97

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_2c9a

    .line 3074
    :cond_2c97
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 3075
    :cond_2c9a
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/EmailPolicy;->isEmailSettingsChangeAllowed(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v67

    .line 3079
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isEmailSettingsChangesAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3082
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2c50

    .line 3087
    .end local v67    # "result":Z
    :pswitch_2cce
    if-eqz p4, :cond_2cd6

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_2cd9

    .line 3088
    :cond_2cd6
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 3089
    :cond_2cd9
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/EmailPolicy;->isEmailNotificationsEnabled(Landroid/app/enterprise/ContextInfo;J)Z

    move-result v67

    .line 3093
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isEmailNotificationsEnabled"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3096
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2c50

    .line 3101
    .end local v67    # "result":Z
    :pswitch_2d0e
    if-eqz p4, :cond_2d16

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_2d19

    .line 3102
    :cond_2d16
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 3103
    :cond_2d19
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/email/EmailPolicy;->getAllowHTMLEmail(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v67

    .line 3107
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getAllowHtmlEmail"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3110
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2c50

    .line 3115
    .end local v67    # "result":Z
    :pswitch_2d4a
    if-eqz p4, :cond_2d52

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_2d55

    .line 3116
    :cond_2d52
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 3117
    :cond_2d55
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getExchangeAccountObject(Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v54

    .line 3120
    .local v54, "obj_eas":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getEnterpriseExchangeAccountObject"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3123
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-nez v16, :cond_2d7e

    .line 3124
    new-instance v16, Landroid/os/Bundle;

    .end local v16    # "bundle":Landroid/os/Bundle;
    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 3125
    .restart local v16    # "bundle":Landroid/os/Bundle;
    :cond_2d7e
    const-string/jumbo v5, "eas.account"

    move-object/from16 v0, v16

    move-object/from16 v1, v54

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3126
    move-object/from16 v0, v49

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->setBundle(Landroid/os/Bundle;)V

    goto/16 :goto_2c50

    .line 3129
    .end local v54    # "obj_eas":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :pswitch_2d91
    if-eqz p4, :cond_2d99

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_2d9c

    .line 3130
    :cond_2d99
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 3131
    :cond_2d9c
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEmailAccountObject(Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v55

    .line 3134
    .local v55, "obj_email":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getEnterpriseEmailAccountObject"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3137
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-nez v16, :cond_2dc5

    .line 3138
    new-instance v16, Landroid/os/Bundle;

    .end local v16    # "bundle":Landroid/os/Bundle;
    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 3139
    .restart local v16    # "bundle":Landroid/os/Bundle;
    :cond_2dc5
    const-string/jumbo v5, "email.account"

    move-object/from16 v0, v16

    move-object/from16 v1, v55

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3140
    move-object/from16 v0, v49

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->setBundle(Landroid/os/Bundle;)V

    goto/16 :goto_2c50

    .line 3153
    .end local v40    # "lEmailPolicy":Lcom/android/server/enterprise/email/EmailPolicy;
    .end local v55    # "obj_email":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :pswitch_2dd8
    const-string/jumbo v5, "vpn_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    .line 3155
    .local v46, "lVpnInfoPolicy":Lcom/android/server/enterprise/vpn/VpnInfoPolicy;
    if-eqz v46, :cond_66

    .line 3156
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_38c6

    :cond_2deb
    :goto_2deb
    packed-switch v5, :pswitch_data_38d8

    .line 3222
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 3156
    :sswitch_2df1
    const-string v6, "checkRacoonSecurity"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2deb

    const/4 v5, 0x0

    goto :goto_2deb

    :sswitch_2dfd
    const-string/jumbo v6, "isUserAddProfilesAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2deb

    const/4 v5, 0x1

    goto :goto_2deb

    :sswitch_2e0a
    const-string/jumbo v6, "isUserChangeProfilesAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2deb

    const/4 v5, 0x2

    goto :goto_2deb

    :sswitch_2e17
    const-string/jumbo v6, "isUserSetAlwaysOnAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2deb

    const/4 v5, 0x3

    goto :goto_2deb

    .line 3158
    :pswitch_2e24
    if-eqz p4, :cond_2e2c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_2e2f

    .line 3159
    :cond_2e2c
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 3161
    :cond_2e2f
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v46

    move-object/from16 v1, p4

    invoke-virtual {v0, v5, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkRacoonSecurity(Landroid/app/enterprise/ContextInfo;[Ljava/lang/String;)Z

    move-result v67

    .line 3164
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "checkRacoonSecurity"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3167
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_2e5c
    move-object/from16 v5, v49

    .line 3225
    goto/16 :goto_67

    .line 3173
    .end local v67    # "result":Z
    :pswitch_2e60
    const/4 v13, 0x0

    .line 3174
    .restart local v13    # "arg":Z
    if-eqz p4, :cond_2e70

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_2e70

    .line 3175
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 3177
    :cond_2e70
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v5, v13}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserAddProfilesAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v67

    .line 3180
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isUserAddProfilesAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3183
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2e5c

    .line 3189
    .end local v13    # "arg":Z
    .end local v67    # "result":Z
    :pswitch_2e9d
    const/4 v13, 0x0

    .line 3190
    .restart local v13    # "arg":Z
    if-eqz p4, :cond_2ead

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_2ead

    .line 3191
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 3193
    :cond_2ead
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v5, v13}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserChangeProfilesAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v67

    .line 3196
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isUserChangeProfilesAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3199
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2e5c

    .line 3205
    .end local v13    # "arg":Z
    .end local v67    # "result":Z
    :pswitch_2eda
    const/4 v13, 0x0

    .line 3206
    .restart local v13    # "arg":Z
    if-eqz p4, :cond_2eea

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_2eea

    .line 3207
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 3209
    :cond_2eea
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v5, v13}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserSetAlwaysOnAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v67

    .line 3212
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isUserSetAlwaysOnAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3215
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2e5c

    .line 3229
    .end local v13    # "arg":Z
    .end local v46    # "lVpnInfoPolicy":Lcom/android/server/enterprise/vpn/VpnInfoPolicy;
    .end local v67    # "result":Z
    :pswitch_2f18
    const-string/jumbo v5, "knox_ccm_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .line 3231
    .local v35, "lClientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    if-eqz v35, :cond_66

    .line 3232
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_38e4

    :cond_2f2b
    :goto_2f2b
    packed-switch v5, :pswitch_data_38f6

    .line 3305
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 3232
    :sswitch_2f31
    const-string/jumbo v6, "installCertificate"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f2b

    const/4 v5, 0x0

    goto :goto_2f2b

    :sswitch_2f3e
    const-string/jumbo v6, "deleteCertificate"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f2b

    const/4 v5, 0x1

    goto :goto_2f2b

    :sswitch_2f4b
    const-string/jumbo v6, "isCCMPolicyEnabledForPackage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f2b

    const/4 v5, 0x2

    goto :goto_2f2b

    :sswitch_2f58
    const-string/jumbo v6, "getCCMVersion"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f2b

    const/4 v5, 0x3

    goto :goto_2f2b

    .line 3234
    :pswitch_2f65
    if-eqz p4, :cond_2f6e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2f71

    .line 3235
    :cond_2f6e
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 3237
    :cond_2f71
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v14

    .line 3238
    .local v14, "arrayLength":I
    new-instance v57, Ljava/util/ArrayList;

    invoke-direct/range {v57 .. v57}, Ljava/util/ArrayList;-><init>()V

    .line 3240
    .local v57, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v21, Lcom/sec/enterprise/knox/ccm/CertificateProfile;

    invoke-direct/range {v21 .. v21}, Lcom/sec/enterprise/knox/ccm/CertificateProfile;-><init>()V

    .line 3241
    .local v21, "cp":Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v21

    iput-boolean v5, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->isCSRResponse:Z

    .line 3242
    const/4 v5, 0x1

    aget-object v5, p4, v5

    move-object/from16 v0, v21

    iput-object v5, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    .line 3243
    const/4 v5, 0x2

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v21

    iput-boolean v5, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowWiFi:Z

    .line 3244
    const/4 v5, 0x3

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v21

    iput-boolean v5, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowAllPackages:Z

    .line 3246
    const/16 v29, 0x4

    .local v29, "i":I
    :goto_2fa9
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    move/from16 v0, v29

    if-ge v0, v5, :cond_2fbd

    .line 3247
    aget-object v5, p4, v29

    move-object/from16 v0, v57

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3246
    add-int/lit8 v29, v29, 0x1

    goto :goto_2fa9

    .line 3248
    :cond_2fbd
    move-object/from16 v0, v57

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    .line 3250
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    add-int/lit8 v6, v14, -0x2

    aget-object v6, p4, v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    add-int/lit8 v7, v14, -0x1

    aget-object v7, p4, v7

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-virtual {v0, v5, v1, v6, v7}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->installCertificate(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;[BLjava/lang/String;)Z

    move-result v67

    .line 3254
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "installCertificate"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3257
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v14    # "arrayLength":I
    .end local v21    # "cp":Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    .end local v29    # "i":I
    .end local v57    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v67    # "result":Z
    :goto_2ffd
    move-object/from16 v5, v49

    .line 3307
    goto/16 :goto_67

    .line 3263
    :pswitch_3001
    if-eqz p4, :cond_3009

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_300c

    .line 3264
    :cond_3009
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 3266
    :cond_300c
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v67

    .line 3269
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "deleteCertificate"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3272
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2ffd

    .line 3278
    .end local v67    # "result":Z
    :pswitch_303c
    if-eqz p4, :cond_3044

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_3047

    .line 3279
    :cond_3044
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 3281
    :cond_3047
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v67

    .line 3284
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isCCMPolicyEnabledForPackage"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3287
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2ffd

    .line 3293
    .end local v67    # "result":Z
    :pswitch_3077
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCCMVersion()Ljava/lang/String;

    move-result-object v18

    .line 3296
    .local v18, "ccmVersion":Ljava/lang/String;
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getCCMVersion"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3299
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v18, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2ffd

    .line 3312
    .end local v18    # "ccmVersion":Ljava/lang/String;
    .end local v35    # "lClientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    :pswitch_3098
    const-string/jumbo v5, "multi_user_manager_service"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;

    .line 3314
    .local v44, "lMultiUserManagerService":Lcom/android/server/enterprise/multiuser/MultiUserManagerService;
    if-eqz v44, :cond_66

    .line 3315
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_3902

    :cond_30ab
    :goto_30ab
    packed-switch v5, :pswitch_data_3914

    .line 3387
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 3315
    :sswitch_30b1
    const-string/jumbo v6, "multipleUsersAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30ab

    const/4 v5, 0x0

    goto :goto_30ab

    :sswitch_30be
    const-string/jumbo v6, "isUserCreationAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30ab

    const/4 v5, 0x1

    goto :goto_30ab

    :sswitch_30cb
    const-string/jumbo v6, "isUserRemovalAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30ab

    const/4 v5, 0x2

    goto :goto_30ab

    :sswitch_30d8
    const-string/jumbo v6, "multipleUsersSupported"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30ab

    const/4 v5, 0x3

    goto :goto_30ab

    .line 3317
    :pswitch_30e5
    const/4 v13, 0x0

    .line 3318
    .restart local v13    # "arg":Z
    if-eqz p4, :cond_30f5

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_30f5

    .line 3319
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 3322
    :cond_30f5
    :try_start_30f5
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v5, v13}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersAllowed(Landroid/app/enterprise/ContextInfo;Z)I
    :try_end_3101
    .catch Landroid/os/RemoteException; {:try_start_30f5 .. :try_end_3101} :catch_3125

    move-result v66

    .line 3327
    .restart local v66    # "res":I
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "multipleUsersAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3330
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v13    # "arg":Z
    .end local v66    # "res":I
    :goto_3121
    move-object/from16 v5, v49

    .line 3390
    goto/16 :goto_67

    .line 3323
    .restart local v13    # "arg":Z
    :catch_3125
    move-exception v23

    .line 3324
    .restart local v23    # "e":Landroid/os/RemoteException;
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 3336
    .end local v13    # "arg":Z
    .end local v23    # "e":Landroid/os/RemoteException;
    :pswitch_3129
    const/4 v13, 0x0

    .line 3337
    .restart local v13    # "arg":Z
    if-eqz p4, :cond_3139

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_3139

    .line 3338
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 3340
    :cond_3139
    :try_start_3139
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v5, v13}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->isUserCreationAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    :try_end_3145
    .catch Ljava/lang/Exception; {:try_start_3139 .. :try_end_3145} :catch_3166

    move-result v67

    .line 3345
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isUserCreationAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3348
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3121

    .line 3341
    .end local v67    # "result":Z
    :catch_3166
    move-exception v23

    .line 3342
    .local v23, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 3354
    .end local v13    # "arg":Z
    .end local v23    # "e":Ljava/lang/Exception;
    :pswitch_316a
    const/4 v13, 0x0

    .line 3355
    .restart local v13    # "arg":Z
    if-eqz p4, :cond_317a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_317a

    .line 3356
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 3359
    :cond_317a
    :try_start_317a
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v5, v13}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->isUserRemovalAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    :try_end_3186
    .catch Landroid/os/RemoteException; {:try_start_317a .. :try_end_3186} :catch_31a8

    move-result v67

    .line 3364
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isUserRemovalAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3367
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3121

    .line 3360
    .end local v67    # "result":Z
    :catch_31a8
    move-exception v23

    .line 3361
    .local v23, "e":Landroid/os/RemoteException;
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 3374
    .end local v13    # "arg":Z
    .end local v23    # "e":Landroid/os/RemoteException;
    :pswitch_31ac
    :try_start_31ac
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersSupported(Landroid/app/enterprise/ContextInfo;)Z
    :try_end_31b8
    .catch Landroid/os/RemoteException; {:try_start_31ac .. :try_end_31b8} :catch_31d7

    move-result v67

    .line 3378
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3381
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3121

    .line 3375
    .end local v67    # "result":Z
    :catch_31d7
    move-exception v23

    .line 3376
    .restart local v23    # "e":Landroid/os/RemoteException;
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 3395
    .end local v23    # "e":Landroid/os/RemoteException;
    .end local v44    # "lMultiUserManagerService":Lcom/android/server/enterprise/multiuser/MultiUserManagerService;
    :pswitch_31db
    const-string/jumbo v5, "device_account_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .line 3397
    .local v36, "lDeviceAccountPolicy":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    if-eqz v36, :cond_66

    if-eqz p3, :cond_66

    .line 3398
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_3920

    :cond_31f0
    :goto_31f0
    packed-switch v5, :pswitch_data_392a

    .line 3432
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 3398
    :sswitch_31f6
    const-string/jumbo v6, "isAccountRemovalAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31f0

    const/4 v5, 0x0

    goto :goto_31f0

    :sswitch_3203
    const-string/jumbo v6, "isAccountAdditionAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31f0

    const/4 v5, 0x1

    goto :goto_31f0

    .line 3400
    :pswitch_3210
    if-eqz p4, :cond_3219

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_321c

    .line 3401
    :cond_3219
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 3403
    :cond_321c
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    const/4 v7, 0x2

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v67

    .line 3407
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isAccountRemovalAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3410
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_324e
    move-object/from16 v5, v49

    .line 3435
    goto/16 :goto_67

    .line 3416
    .end local v67    # "result":Z
    :pswitch_3252
    if-eqz p4, :cond_325b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_325e

    .line 3417
    :cond_325b
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 3419
    :cond_325e
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    const/4 v7, 0x2

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v67

    .line 3423
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isAccountAdditionAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3426
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_324e

    .line 3439
    .end local v36    # "lDeviceAccountPolicy":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    .end local v67    # "result":Z
    :pswitch_3291
    const-string/jumbo v5, "misc_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/server/enterprise/general/MiscPolicy;

    .line 3441
    .local v43, "lMiscPolicy":Lcom/android/server/enterprise/general/MiscPolicy;
    if-eqz v43, :cond_66

    if-eqz p3, :cond_66

    .line 3442
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_3932

    :cond_32a6
    :goto_32a6
    packed-switch v5, :pswitch_data_393c

    .line 3466
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 3442
    :sswitch_32ac
    const-string/jumbo v6, "getCurrentLockScreenString"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32a6

    const/4 v5, 0x0

    goto :goto_32a6

    :sswitch_32b9
    const-string/jumbo v6, "isNFCStateChangeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32a6

    const/4 v5, 0x1

    goto :goto_32a6

    .line 3444
    :pswitch_32c6
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/general/MiscPolicy;->getCurrentLockScreenString(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v22

    .line 3447
    .local v22, "current":Ljava/lang/String;
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getCurrentLockScreenString"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3450
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v22, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v22    # "current":Ljava/lang/String;
    :goto_32ee
    move-object/from16 v5, v49

    .line 3469
    goto/16 :goto_67

    .line 3455
    :pswitch_32f2
    invoke-virtual/range {v43 .. v43}, Lcom/android/server/enterprise/general/MiscPolicy;->isNFCStateChangeAllowed()Z

    move-result v67

    .line 3458
    .restart local v67    # "result":Z
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "isNFCStateChangeAllowed"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3461
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_32ee

    .line 3473
    .end local v43    # "lMiscPolicy":Lcom/android/server/enterprise/general/MiscPolicy;
    .end local v67    # "result":Z
    :pswitch_3316
    const-string/jumbo v5, "email_account_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/enterprise/email/EmailAccountPolicy;

    .line 3475
    .local v39, "lEmailAccountPolicy":Lcom/android/server/enterprise/email/EmailAccountPolicy;
    if-eqz v39, :cond_66

    if-eqz p3, :cond_66

    .line 3476
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_3944

    :cond_332b
    :goto_332b
    packed-switch v5, :pswitch_data_3956

    .line 3535
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 3476
    :sswitch_3331
    const-string/jumbo v6, "getSecurityIncomingServerPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_332b

    const/4 v5, 0x0

    goto :goto_332b

    :sswitch_333e
    const-string/jumbo v6, "getSecurityOutgoingServerPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_332b

    const/4 v5, 0x1

    goto :goto_332b

    :sswitch_334b
    const-string/jumbo v6, "setSecurityInComingServerPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_332b

    const/4 v5, 0x2

    goto :goto_332b

    :sswitch_3358
    const-string/jumbo v6, "setSecurityOutGoingServerPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_332b

    const/4 v5, 0x3

    goto :goto_332b

    .line 3478
    :pswitch_3365
    if-eqz p4, :cond_336d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_3370

    .line 3479
    :cond_336d
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 3481
    :cond_3370
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getSecurityInComingServerPassword(Landroid/app/enterprise/ContextInfo;J)Ljava/lang/String;

    move-result-object v31

    .line 3485
    .local v31, "incServer":Ljava/lang/String;
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSecurityIncomingServerPassword"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3488
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v31, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v31    # "incServer":Ljava/lang/String;
    :goto_339f
    move-object/from16 v5, v49

    .line 3538
    goto/16 :goto_67

    .line 3493
    :pswitch_33a3
    if-eqz p4, :cond_33ab

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_33ae

    .line 3494
    :cond_33ab
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 3496
    :cond_33ae
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getSecurityOutGoingServerPassword(Landroid/app/enterprise/ContextInfo;J)Ljava/lang/String;

    move-result-object v56

    .line 3500
    .local v56, "outServer":Ljava/lang/String;
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getSecurityOutgoingServerPassword"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3503
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v56, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_339f

    .line 3508
    .end local v56    # "outServer":Ljava/lang/String;
    :pswitch_33de
    if-eqz p4, :cond_33e7

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_33ea

    .line 3509
    :cond_33e7
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 3510
    :cond_33ea
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityInComingServerPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v50

    .line 3513
    .restart local v50    # "long_res":J
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3516
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v50 .. v51}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_339f

    .line 3522
    .end local v50    # "long_res":J
    :pswitch_3417
    if-eqz p4, :cond_3420

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_3423

    .line 3523
    :cond_3420
    const/4 v5, 0x0

    goto/16 :goto_67

    .line 3524
    :cond_3423
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityOutGoingServerPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v50

    .line 3527
    .restart local v50    # "long_res":J
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3530
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v50 .. v51}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_339f

    .line 3542
    .end local v39    # "lEmailAccountPolicy":Lcom/android/server/enterprise/email/EmailAccountPolicy;
    .end local v50    # "long_res":J
    :pswitch_3451
    const-string/jumbo v5, "dualsim_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;

    .line 3544
    .local v37, "lDualSimPolicy":Lcom/android/server/enterprise/dualsim/DualSimPolicyService;
    if-eqz v37, :cond_66

    if-eqz p3, :cond_66

    .line 3545
    const-string/jumbo v5, "getpreferredsimslot"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 3546
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->getPreferredSimSlot(Landroid/app/enterprise/ContextInfo;)I

    move-result v66

    .line 3550
    .restart local v66    # "res":I
    new-instance v49, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getpreferredsimslot"

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3555
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v5, v49

    .line 3559
    goto/16 :goto_67

    .line 3026
    .end local v37    # "lDualSimPolicy":Lcom/android/server/enterprise/dualsim/DualSimPolicyService;
    .end local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    .end local v66    # "res":I
    .restart local v41    # "lEnterpriseDeviceManagerService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    .restart local v67    # "result":Z
    .restart local v74    # "token":J
    :catchall_3499
    move-exception v5

    move-object/from16 v49, v52

    .end local v52    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    .restart local v49    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    goto/16 :goto_2b83

    .line 187
    :pswitch_data_349e
    .packed-switch 0x1
        :pswitch_15af
        :pswitch_2f18
        :pswitch_31db
        :pswitch_66
        :pswitch_3451
        :pswitch_2bae
        :pswitch_3316
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_2908
        :pswitch_1c94
        :pswitch_2466
        :pswitch_4a4
        :pswitch_cee
        :pswitch_3291
        :pswitch_3098
        :pswitch_68
        :pswitch_2dd8
        :pswitch_20ef
    .end packed-switch

    .line 192
    :sswitch_data_34ca
    .sparse-switch
        -0x7c20b2e4 -> :sswitch_ae
        -0x75b6adce -> :sswitch_137
        -0x516c3a61 -> :sswitch_fb
        -0x4b848555 -> :sswitch_10a
        -0x45f6c0db -> :sswitch_119
        -0x3f23242a -> :sswitch_128
        -0x308af1de -> :sswitch_95
        -0xb24e11b -> :sswitch_ed
        0x1134efad -> :sswitch_88
        0x1410b963 -> :sswitch_bb
        0x14e927da -> :sswitch_154
        0x42bd705d -> :sswitch_e1
        0x617af081 -> :sswitch_162
        0x6b27fd59 -> :sswitch_c7
        0x6dfeff94 -> :sswitch_146
        0x6e342165 -> :sswitch_d4
        0x7be8d885 -> :sswitch_a2
    .end sparse-switch

    :pswitch_data_3510
    .packed-switch 0x0
        :pswitch_171
        :pswitch_1bc
        :pswitch_1e9
        :pswitch_21e
        :pswitch_24c
        :pswitch_280
        :pswitch_2ae
        :pswitch_2dc
        :pswitch_2f2
        :pswitch_320
        :pswitch_34e
        :pswitch_37c
        :pswitch_3ab
        :pswitch_3d9
        :pswitch_407
        :pswitch_43b
        :pswitch_46f
    .end packed-switch

    .line 422
    :sswitch_data_3536
    .sparse-switch
        -0x7de23aaa -> :sswitch_5e4
        -0x75228db3 -> :sswitch_56c
        -0x6dd40464 -> :sswitch_5a8
        -0x5e8b707a -> :sswitch_4e1
        -0x535b24ed -> :sswitch_4d4
        -0x5344faa1 -> :sswitch_4c7
        -0x49b19ab4 -> :sswitch_5d5
        -0x47aa5058 -> :sswitch_63e
        -0x477f69dc -> :sswitch_599
        -0x47062780 -> :sswitch_4fb
        -0x2d0232dc -> :sswitch_4ee
        -0x1b1e2f47 -> :sswitch_620
        -0x6441366 -> :sswitch_5c6
        -0x2067e91 -> :sswitch_64d
        0x10dc886c -> :sswitch_55d
        0x27deb5dc -> :sswitch_530
        0x28bec559 -> :sswitch_5b7
        0x376703d8 -> :sswitch_611
        0x3e24f8e6 -> :sswitch_53f
        0x428f670d -> :sswitch_602
        0x432078d3 -> :sswitch_4ba
        0x433f1786 -> :sswitch_522
        0x4f9505ac -> :sswitch_57b
        0x5afa1a68 -> :sswitch_58a
        0x5b05ced2 -> :sswitch_508
        0x6238abf9 -> :sswitch_62f
        0x694839c4 -> :sswitch_5f3
        0x6ad3e979 -> :sswitch_65c
        0x6c630712 -> :sswitch_515
        0x75760f09 -> :sswitch_54e
    .end sparse-switch

    :pswitch_data_35b0
    .packed-switch 0x0
        :pswitch_66b
        :pswitch_6bd
        :pswitch_6ee
        :pswitch_71f
        :pswitch_765
        :pswitch_7ab
        :pswitch_7d9
        :pswitch_80b
        :pswitch_83d
        :pswitch_86f
        :pswitch_8a1
        :pswitch_8d3
        :pswitch_919
        :pswitch_96a
        :pswitch_9a2
        :pswitch_9d4
        :pswitch_a06
        :pswitch_a38
        :pswitch_a7f
        :pswitch_ac6
        :pswitch_af8
        :pswitch_b2a
        :pswitch_b58
        :pswitch_b8a
        :pswitch_bbc
        :pswitch_bea
        :pswitch_c1c
        :pswitch_c4e
        :pswitch_c80
        :pswitch_cb8
    .end packed-switch

    .line 1171
    :sswitch_data_35f0
    .sparse-switch
        -0x7d00b11f -> :sswitch_da7
        -0x7bc370bc -> :sswitch_e88
        -0x757aa1fb -> :sswitch_d7a
        -0x6ff99d8b -> :sswitch_df2
        -0x6f61ea52 -> :sswitch_d52
        -0x6f1f927d -> :sswitch_dd4
        -0x6cd5112c -> :sswitch_d38
        -0x6b02fb56 -> :sswitch_d6c
        -0x68231777 -> :sswitch_e01
        -0x5f479d3d -> :sswitch_eb5
        -0x5d96bdfd -> :sswitch_ed3
        -0x49039c7d -> :sswitch_e97
        -0x3eeccaaa -> :sswitch_d45
        -0x3b6d6c7b -> :sswitch_d1e
        -0x105b68f3 -> :sswitch_e2e
        -0xf88924c -> :sswitch_d11
        -0x63922de -> :sswitch_e79
        -0x2246832 -> :sswitch_e4c
        -0x117c459 -> :sswitch_e6a
        0x4fd98e1 -> :sswitch_e10
        0x12bb4d48 -> :sswitch_d04
        0x18e41b33 -> :sswitch_ea6
        0x1d261c9d -> :sswitch_e3d
        0x240ce64e -> :sswitch_e1f
        0x32c1d30f -> :sswitch_e5b
        0x438d32f5 -> :sswitch_db6
        0x4875c45d -> :sswitch_de3
        0x4a948f99 -> :sswitch_d89
        0x64defd38 -> :sswitch_ec4
        0x67050a1d -> :sswitch_d2b
        0x6c8af02b -> :sswitch_d5f
        0x6db77171 -> :sswitch_d98
        0x6ec40bb4 -> :sswitch_dc5
    .end sparse-switch

    :pswitch_data_3676
    .packed-switch 0x0
        :pswitch_ee2
        :pswitch_f16
        :pswitch_f5f
        :pswitch_f90
        :pswitch_fc2
        :pswitch_100d
        :pswitch_103f
        :pswitch_1071
        :pswitch_10a3
        :pswitch_10d5
        :pswitch_1103
        :pswitch_1135
        :pswitch_1167
        :pswitch_1199
        :pswitch_11cb
        :pswitch_11fd
        :pswitch_122f
        :pswitch_1261
        :pswitch_1293
        :pswitch_12c5
        :pswitch_12f7
        :pswitch_1329
        :pswitch_135b
        :pswitch_138d
        :pswitch_13bf
        :pswitch_13f1
        :pswitch_1423
        :pswitch_146a
        :pswitch_149c
        :pswitch_14ce
        :pswitch_1500
        :pswitch_1532
        :pswitch_1564
    .end packed-switch

    .line 1957
    :sswitch_data_36bc
    .sparse-switch
        -0x777467f8 -> :sswitch_16eb
        -0x4de6cfb2 -> :sswitch_1655
        -0x4378abac -> :sswitch_15dc
        -0x308e1a98 -> :sswitch_15f6
        -0x29404601 -> :sswitch_16dc
        -0x2360eeb0 -> :sswitch_16fa
        -0xf8e19f3 -> :sswitch_161d
        0x14014325 -> :sswitch_16a0
        0x1a458c22 -> :sswitch_16be
        0x1e373fed -> :sswitch_1637
        0x21074337 -> :sswitch_162a
        0x22e592aa -> :sswitch_1664
        0x2383ddea -> :sswitch_16af
        0x2952fe03 -> :sswitch_1610
        0x2d2b575b -> :sswitch_1682
        0x2dd7b5a9 -> :sswitch_1691
        0x38dd3e65 -> :sswitch_1673
        0x3c3b0102 -> :sswitch_15e9
        0x3d4c4243 -> :sswitch_1646
        0x3d73f371 -> :sswitch_16cd
        0x49cef874 -> :sswitch_15cf
        0x767a17ac -> :sswitch_1603
    .end sparse-switch

    :pswitch_data_3716
    .packed-switch 0x0
        :pswitch_1709
        :pswitch_1745
        :pswitch_177e
        :pswitch_17b6
        :pswitch_17f4
        :pswitch_1817
        :pswitch_1862
        :pswitch_18a4
        :pswitch_18e6
        :pswitch_191d
        :pswitch_1958
        :pswitch_1998
        :pswitch_19d2
        :pswitch_1a16
        :pswitch_1a4d
        :pswitch_1a88
        :pswitch_1ac0
        :pswitch_1afb
        :pswitch_1b5d
        :pswitch_1bbd
        :pswitch_1c3c
        :pswitch_1c68
    .end packed-switch

    .line 2332
    :sswitch_data_3746
    .sparse-switch
        -0x7f6b9b80 -> :sswitch_1ceb
        -0x7a29af54 -> :sswitch_1d6a
        -0x7672ed17 -> :sswitch_1d5b
        -0x6a25634f -> :sswitch_1cb7
        -0x437f6e25 -> :sswitch_1d4c
        -0x1e01c219 -> :sswitch_1d2e
        -0x14b468b1 -> :sswitch_1cc4
        0xb8321a0 -> :sswitch_1d3d
        0x26b3fb45 -> :sswitch_1cd1
        0x2a7ba768 -> :sswitch_1cde
        0x37929121 -> :sswitch_1d1f
        0x6e37395a -> :sswitch_1d05
        0x77ba6b2b -> :sswitch_1cf8
        0x7ec2cd45 -> :sswitch_1d12
    .end sparse-switch

    :pswitch_data_3780
    .packed-switch 0x0
        :pswitch_1d79
        :pswitch_1dbb
        :pswitch_1dfa
        :pswitch_1e3a
        :pswitch_1e7a
        :pswitch_1eba
        :pswitch_1efa
        :pswitch_1f3a
        :pswitch_1f7a
        :pswitch_1fba
        :pswitch_1ffa
        :pswitch_2036
        :pswitch_2072
        :pswitch_20b2
    .end packed-switch

    .line 2541
    :sswitch_data_37a0
    .sparse-switch
        -0x741f137a -> :sswitch_2165
        -0x5d7bb47d -> :sswitch_214b
        -0x511c5d9f -> :sswitch_218f
        -0x44588ee5 -> :sswitch_2131
        -0x420e1f50 -> :sswitch_2172
        -0x23226268 -> :sswitch_219e
        -0x208922d -> :sswitch_210a
        0x1b40829f -> :sswitch_213e
        0x2e222643 -> :sswitch_2124
        0x5a7559bf -> :sswitch_2158
        0x60eb8b37 -> :sswitch_2180
        0x6406da08 -> :sswitch_2117
    .end sparse-switch

    :pswitch_data_37d2
    .packed-switch 0x0
        :pswitch_21ad
        :pswitch_21dd
        :pswitch_221e
        :pswitch_224b
        :pswitch_2279
        :pswitch_22a7
        :pswitch_22dc
        :pswitch_230a
        :pswitch_2338
        :pswitch_2366
        :pswitch_23cf
        :pswitch_2438
    .end packed-switch

    .line 2714
    :sswitch_data_37ee
    .sparse-switch
        -0x678cfb16 -> :sswitch_24ce
        -0x5d1cb00b -> :sswitch_2514
        -0x58dab65f -> :sswitch_2541
        -0x55d0d0ee -> :sswitch_2505
        -0x495e7741 -> :sswitch_24db
        -0x1abb5fa -> :sswitch_248d
        0xf077a09 -> :sswitch_24c1
        0x1fa36ac0 -> :sswitch_24b4
        0x2f421cc3 -> :sswitch_249a
        0x32574534 -> :sswitch_24e8
        0x34565e5f -> :sswitch_2480
        0x38ab60cf -> :sswitch_2532
        0x3ab3e61a -> :sswitch_24a7
        0x4ed22f86 -> :sswitch_2523
        0x6c0df1e8 -> :sswitch_24f6
    .end sparse-switch

    :pswitch_data_382c
    .packed-switch 0x0
        :pswitch_2550
        :pswitch_257e
        :pswitch_25be
        :pswitch_2613
        :pswitch_2691
        :pswitch_270f
        :pswitch_2730
        :pswitch_2770
        :pswitch_27ee
        :pswitch_2818
        :pswitch_2840
        :pswitch_2868
        :pswitch_2890
        :pswitch_28b8
        :pswitch_28e0
    .end packed-switch

    .line 2910
    :sswitch_data_384e
    .sparse-switch
        -0x76e9095f -> :sswitch_2987
        -0x755ab0b2 -> :sswitch_296d
        -0x69b477e0 -> :sswitch_292c
        -0x5fd37362 -> :sswitch_297a
        -0x3d5118be -> :sswitch_291f
        -0x4e0d4c0 -> :sswitch_29a4
        0x1d6710b8 -> :sswitch_2995
        0x2fe3c227 -> :sswitch_2953
        0x3854fcc5 -> :sswitch_2960
        0x47a72ec2 -> :sswitch_2939
        0x7ac2a216 -> :sswitch_2946
    .end sparse-switch

    :pswitch_data_387c
    .packed-switch 0x0
        :pswitch_29b3
        :pswitch_29ef
        :pswitch_2a3f
        :pswitch_2a68
        :pswitch_2aa2
        :pswitch_2ac9
        :pswitch_2ae9
        :pswitch_291b
        :pswitch_2b2d
        :pswitch_2b57
        :pswitch_2b87
    .end packed-switch

    .line 3046
    :sswitch_data_3896
    .sparse-switch
        -0x793fada2 -> :sswitch_2bfd
        -0x5c3258ae -> :sswitch_2c0a
        -0x3c3a3ab9 -> :sswitch_2c17
        -0x394ec066 -> :sswitch_2be3
        0x1733e8eb -> :sswitch_2bf0
        0x4e985da6 -> :sswitch_2bd6
        0x4fb7d6e9 -> :sswitch_2bc9
    .end sparse-switch

    :pswitch_data_38b4
    .packed-switch 0x0
        :pswitch_2c24
        :pswitch_2c54
        :pswitch_2c8f
        :pswitch_2cce
        :pswitch_2d0e
        :pswitch_2d4a
        :pswitch_2d91
    .end packed-switch

    .line 3156
    :sswitch_data_38c6
    .sparse-switch
        0x20839282 -> :sswitch_2df1
        0x20e4e472 -> :sswitch_2dfd
        0x528665ad -> :sswitch_2e17
        0x75693779 -> :sswitch_2e0a
    .end sparse-switch

    :pswitch_data_38d8
    .packed-switch 0x0
        :pswitch_2e24
        :pswitch_2e60
        :pswitch_2e9d
        :pswitch_2eda
    .end packed-switch

    .line 3232
    :sswitch_data_38e4
    .sparse-switch
        -0x602f3b04 -> :sswitch_2f31
        -0x148747ff -> :sswitch_2f58
        0x37b7b049 -> :sswitch_2f4b
        0x7a36baec -> :sswitch_2f3e
    .end sparse-switch

    :pswitch_data_38f6
    .packed-switch 0x0
        :pswitch_2f65
        :pswitch_3001
        :pswitch_303c
        :pswitch_3077
    .end packed-switch

    .line 3315
    :sswitch_data_3902
    .sparse-switch
        -0xa355b0c -> :sswitch_30be
        -0x7ddb46f -> :sswitch_30cb
        0x9914b0 -> :sswitch_30b1
        0x274445b6 -> :sswitch_30d8
    .end sparse-switch

    :pswitch_data_3914
    .packed-switch 0x0
        :pswitch_30e5
        :pswitch_3129
        :pswitch_316a
        :pswitch_31ac
    .end packed-switch

    .line 3398
    :sswitch_data_3920
    .sparse-switch
        -0x7117b61 -> :sswitch_31f6
        0x4fb7d6e9 -> :sswitch_3203
    .end sparse-switch

    :pswitch_data_392a
    .packed-switch 0x0
        :pswitch_3210
        :pswitch_3252
    .end packed-switch

    .line 3442
    :sswitch_data_3932
    .sparse-switch
        -0x7cedec35 -> :sswitch_32ac
        0x30468cc8 -> :sswitch_32b9
    .end sparse-switch

    :pswitch_data_393c
    .packed-switch 0x0
        :pswitch_32c6
        :pswitch_32f2
    .end packed-switch

    .line 3476
    :sswitch_data_3944
    .sparse-switch
        -0x5ed62634 -> :sswitch_3358
        0x655a3d46 -> :sswitch_334b
        0x705941e0 -> :sswitch_333e
        0x7378391a -> :sswitch_3331
    .end sparse-switch

    :pswitch_data_3956
    .packed-switch 0x0
        :pswitch_3365
        :pswitch_33a3
        :pswitch_33de
        :pswitch_3417
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 3637
    const/4 v0, 0x0

    return v0
.end method
