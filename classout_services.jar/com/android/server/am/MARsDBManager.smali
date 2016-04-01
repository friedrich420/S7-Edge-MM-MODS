.class public Lcom/android/server/am/MARsDBManager;
.super Ljava/lang/Object;
.source "MARsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;,
        Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;,
        Lcom/android/server/am/MARsDBManager$SmartManagerObserver;,
        Lcom/android/server/am/MARsDBManager$DBHandler;,
        Lcom/android/server/am/MARsDBManager$DBThread;,
        Lcom/android/server/am/MARsDBManager$SMDBValue;
    }
.end annotation


# static fields
.field private static final AUTORUN:Ljava/lang/String; = "autoRun"

.field private static final EXTRAS:Ljava/lang/String; = "extras"

.field private static final ISAPPOPTTARGET:Ljava/lang/String; = "isAppOptTarget"

.field private static final IS_DEFAULT_FREEZED:Ljava/lang/String; = "isDefaultFreezed"

.field private static final IS_SM_FREEZED:Ljava/lang/String; = "isSMFreezed"

.field private static final IS_USER_FORCESTOPPED:Ljava/lang/String; = "isUserForceStopped"

.field private static final LAST_USED_TIME:Ljava/lang/String; = "lastUsedTime"

.field static final MARS_DB_DELETE_PACKAGE_MSG:I = 0xa

.field static final MARS_DB_INITMANAGEDPACKAGES_MSG:I = 0x1

.field static final MARS_DB_INITSETTING_MSG:I = 0x2

.field static final MARS_DB_INIT_SKT_PACKAGE_MSG:I = 0xc

.field static final MARS_DB_INSERT_PACKAGE_MSG:I = 0x9

.field static final MARS_DB_REQUEST_FILLINDB_MSG:I = 0x7

.field static final MARS_DB_UPDATE_AUTORUN_MSG:I = 0xb

.field static final MARS_DB_UPDATE_PREVIOUS_PACKAGESTYPE_MSG:I = 0x8

.field static final MARS_DB_UPDATE_RESETTIME_MSG:I = 0x3

.field static final MARS_DB_UPDATE_RESETTIME_SPECIFIC_MSG:I = 0x4

.field static final MARS_SMART_MGR_DB_CHANGED:I = 0x5

.field static final MARS_SMART_MGR_SETTINGS_DB_CHANGED:I = 0x6

.field private static final NOTIFIEDCOUNT:Ljava/lang/String; = "notifiedCount"

.field private static final PACKAGENAME:Ljava/lang/String; = "package_name"

.field private static final PACKAGETYPE:Ljava/lang/String; = "packageType"

.field public static final PACKAGE_TYPE_3RD_PARTY:I = 0x2

.field public static final PACKAGE_TYPE_CARRIER:I = 0x1000

.field public static final PACKAGE_TYPE_CONTAINER:I = 0x2000

.field public static final PACKAGE_TYPE_DEVICE_ADMIN:I = 0x8

.field public static final PACKAGE_TYPE_DISABLEABLE:I = 0x20

.field public static final PACKAGE_TYPE_DRM:I = 0x8000

.field public static final PACKAGE_TYPE_EXCEPTION_AUTORUN_DEFAULT_OFF:I = 0x20000

.field public static final PACKAGE_TYPE_GOOGLE:I = 0x800

.field public static final PACKAGE_TYPE_HAS_ICON:I = 0x1

.field public static final PACKAGE_TYPE_INTENT_RECEIVING:I = 0x10

.field public static final PACKAGE_TYPE_ORDINARY_SYSTEM:I = 0x100

.field public static final PACKAGE_TYPE_PRELOADED:I = 0x400

.field public static final PACKAGE_TYPE_PRIVILEGED_SYSTEM:I = 0x200

.field public static final PACKAGE_TYPE_REMOVEABLE:I = 0x4

.field public static final PACKAGE_TYPE_SDCARD:I = 0x10000

.field public static final PACKAGE_TYPE_SYSTEM:I = 0x40

.field public static final PACKAGE_TYPE_UPDATED_SYSTEM:I = 0x80

.field public static final PACKAGE_TYPE_VENDOR:I = 0x4000

.field private static final READCOUNT:Ljava/lang/String; = "readCount"

.field private static final RESETTIME:Ljava/lang/String; = "resetTime"

.field static final TAG:Ljava/lang/String; = "MARsDBManager"

.field static final UPDATE_SMDB_COLUMN_AUTORUN:I = 0x8

.field static final UPDATE_SMDB_COLUMN_EXTRAS:I = 0x2

.field static final UPDATE_SMDB_COLUMN_PKGTYPE:I = 0x4

.field static final UPDATE_SMDB_COLUMN_RESETTIME:I = 0x1

.field private static final VERSION_MGMT:Ljava/lang/String; = "versionMgmt"


# instance fields
.field public final SMART_MGR_EXCLUDED_APP_URI:Landroid/net/Uri;

.field public final SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

.field public final SMART_MGR_URI:Landroid/net/Uri;

.field final cscpkgName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

.field private mDBUpdated:Z

.field public mOldVersion:Z

.field mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

.field private mPreviousPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/MARsDBManager$SMDBValue;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateResetTimeValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SMDBValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;Landroid/content/Context;)V
    .registers 6
    .param p1, "policyManager"    # Lcom/android/server/am/MARsPolicyManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const-string v1, "content://com.samsung.android.sm/AppFreezer"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, SMART_MGR_URI:Landroid/net/Uri;

    .line 138
    const-string v1, "content://com.samsung.android.sm/settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    .line 139
    const-string v1, "content://com.samsung.android.sm/excluded_app"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, SMART_MGR_EXCLUDED_APP_URI:Landroid/net/Uri;

    .line 202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mUpdateResetTimeValues:Ljava/util/ArrayList;

    .line 204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, cscpkgName:Ljava/util/ArrayList;

    .line 206
    iput-boolean v2, p0, mDBUpdated:Z

    .line 208
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, mPreviousPackages:Landroid/util/ArrayMap;

    .line 210
    iput-boolean v2, p0, mOldVersion:Z

    .line 330
    iput-object p1, p0, mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    .line 331
    iput-object p2, p0, mContext:Landroid/content/Context;

    .line 333
    new-instance v0, Lcom/android/server/am/MARsDBManager$DBThread;

    const-string v1, "MARsDBThread"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsDBManager$DBThread;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;)V

    .line 334
    .local v0, "mDBThread":Lcom/android/server/am/MARsDBManager$DBThread;
    invoke-virtual {v0}, Lcom/android/server/am/MARsDBManager$DBThread;->start()V

    .line 335
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/am/MARsDBManager;Lcom/android/server/am/MARsDBManager$DBHandler;)Lcom/android/server/am/MARsDBManager$DBHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsDBManager;
    .param p1, "x1"    # Lcom/android/server/am/MARsDBManager$DBHandler;

    .prologue
    .line 58
    iput-object p1, p0, mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/am/MARsDBManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/MARsDBManager;

    .prologue
    .line 58
    invoke-direct {p0}, initManagedPackagesInternal()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsDBManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, deletePackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/MARsDBManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/MARsDBManager;

    .prologue
    .line 58
    invoke-direct {p0}, updateAutoRunTargetXmlToDB()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/am/MARsDBManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/MARsDBManager;

    .prologue
    .line 58
    invoke-direct {p0}, getExcludedAppDBValues()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/am/MARsDBManager;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsDBManager;

    .prologue
    .line 58
    invoke-direct {p0}, getManagedPackagesFromDB()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/MARsDBManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/MARsDBManager;

    .prologue
    .line 58
    invoke-direct {p0}, getSettingsValueFromDB()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/MARsDBManager;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsDBManager;

    .prologue
    .line 58
    iget-object v0, p0, mUpdateResetTimeValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/MARsDBManager;ILjava/util/ArrayList;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/MARsDBManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, updateDBAll(ILjava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;ILcom/android/server/am/MARsDBManager$SMDBValue;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/am/MARsDBManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/server/am/MARsDBManager$SMDBValue;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, updateDBSpecific(Ljava/lang/String;ILcom/android/server/am/MARsDBManager$SMDBValue;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/MARsDBManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsDBManager;

    .prologue
    .line 58
    iget-boolean v0, p0, mDBUpdated:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/am/MARsDBManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsDBManager;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, mDBUpdated:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/am/MARsDBManager;ZLjava/util/ArrayList;Z)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/am/MARsDBManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, updateDBForApp(ZLjava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/MARsDBManager;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsDBManager;

    .prologue
    .line 58
    iget-object v0, p0, mPreviousPackages:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsDBManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, insertPackage(Ljava/lang/String;)V

    return-void
.end method

.method private checkSmDBVersion()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 468
    const/4 v6, 0x0

    .line 470
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, SMART_MGR_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "isAppOptTarget"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 473
    if-eqz v6, :cond_1f

    .line 474
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 477
    :cond_1f
    const/4 v0, 0x0

    iput-boolean v0, p0, mOldVersion:Z
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_22} :catch_23
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_22} :catch_34

    .line 489
    :goto_22
    return-void

    .line 478
    :catch_23
    move-exception v7

    .line 479
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    iget-object v0, p0, mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_31

    .line 480
    const-string v0, "MARsDBManager"

    const-string v1, "checkSmDBVersion, catch no column exception! OldVersion!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_31
    iput-boolean v8, p0, mOldVersion:Z

    goto :goto_22

    .line 483
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_34
    move-exception v7

    .line 484
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    iget-object v0, p0, mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_42

    .line 485
    const-string v0, "MARsDBManager"

    const-string v1, "checkSmDBVersion-sql, catch no column exception! OldVersion!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_42
    iput-boolean v8, p0, mOldVersion:Z

    goto :goto_22
.end method

.method private deletePackage(Ljava/lang/String;)V
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1456
    const-string/jumbo v3, "package_name=?"

    .line 1457
    .local v3, "where":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    .line 1458
    .local v2, "selectionArgs":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1460
    .local v1, "row":I
    :try_start_a
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, SMART_MGR_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_21

    move-result v1

    .line 1465
    :goto_16
    if-gez v1, :cond_20

    .line 1466
    const-string v4, "MARsDBManager"

    const-string/jumbo v5, "deletePackage error!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    :cond_20
    return-void

    .line 1461
    :catch_21
    move-exception v0

    .line 1462
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "MARsDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception with contentResolver : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method private getExcludedAppDBValues()V
    .registers 16

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x2

    const/4 v12, 0x0

    .line 624
    const-string/jumbo v6, "exclude_category"

    .line 625
    .local v6, "EXCLUDE_CATEGORY":Ljava/lang/String;
    const-string/jumbo v7, "exclude_type"

    .line 626
    .local v7, "EXCLUDE_TYPE":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 627
    .local v10, "sktSpeicalPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 629
    .local v11, "whiteListIntentsForSKT":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 631
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_14
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, SMART_MGR_EXCLUDED_APP_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "package_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v6, v2, v3

    const/4 v3, 0x2

    aput-object v7, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_31} :catch_72

    move-result-object v8

    .line 638
    :goto_32
    if-eqz v8, :cond_aa

    .line 639
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 640
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 642
    :cond_3a
    :goto_3a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 643
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 644
    const-string v0, "2"

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 645
    const-string v0, "6"

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 646
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 633
    :catch_72
    move-exception v9

    .line 634
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "MARsDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception with contentResolver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_32

    .line 647
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_93
    const-string v0, "7"

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 648
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 653
    :cond_a7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 655
    :cond_aa
    iget-object v0, p0, mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0, v10}, Lcom/android/server/am/MARsPolicyManager;->setSKTSpeicalPackages(Ljava/util/ArrayList;)V

    .line 656
    iget-object v0, p0, mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0, v11}, Lcom/android/server/am/MARsPolicyManager;->setWhiteListIntentsForSKT(Ljava/util/ArrayList;)V

    .line 657
    return-void
.end method

.method private getManagedPackagesFromDB()Ljava/util/ArrayList;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SMDBValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 526
    const/4 v12, 0x0

    .line 527
    .local v12, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 528
    .local v3, "selection":Ljava/lang/String;
    const/4 v4, 0x0

    .line 529
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 531
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v0, :cond_12

    .line 532
    const-string v0, "MARsDBManager"

    const-string/jumbo v1, "getManagedPackagesFromDB!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_12
    iget-boolean v0, p0, mOldVersion:Z

    if-eqz v0, :cond_7c

    .line 536
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    .end local v2    # "projection":[Ljava/lang/String;
    const/4 v0, 0x0

    const-string/jumbo v1, "package_name"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "isSMFreezed"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v1, "extras"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string/jumbo v1, "resetTime"

    aput-object v1, v2, v0

    .line 546
    .restart local v2    # "projection":[Ljava/lang/String;
    :goto_31
    :try_start_31
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, SMART_MGR_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3d} :catch_b5

    move-result-object v12

    .line 553
    :goto_3e
    if-eqz v12, :cond_db

    .line 554
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 555
    .local v14, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    :cond_45
    :goto_45
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 556
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 557
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 558
    .local v7, "packageName":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 559
    .local v8, "strIsSMFreezed":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 560
    .local v10, "strExtras":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 561
    .local v9, "strResetTime":Ljava/lang/String;
    const/4 v11, 0x0

    .line 562
    .local v11, "strAutoRun":Ljava/lang/String;
    iget-boolean v0, p0, mOldVersion:Z

    if-nez v0, :cond_70

    .line 563
    const/4 v0, 0x5

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 566
    :cond_70
    if-eqz v7, :cond_45

    .line 567
    new-instance v5, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    .local v5, "pkg":Lcom/android/server/am/MARsDBManager$SMDBValue;
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 539
    .end local v5    # "pkg":Lcom/android/server/am/MARsDBManager$SMDBValue;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "strIsSMFreezed":Ljava/lang/String;
    .end local v9    # "strResetTime":Ljava/lang/String;
    .end local v10    # "strExtras":Ljava/lang/String;
    .end local v11    # "strAutoRun":Ljava/lang/String;
    .end local v14    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    :cond_7c
    const-string/jumbo v3, "isAppOptTarget=?"

    .line 540
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .end local v4    # "selectionArgs":[Ljava/lang/String;
    const/4 v0, 0x0

    const-string v1, "1"

    aput-object v1, v4, v0

    .line 541
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    .end local v2    # "projection":[Ljava/lang/String;
    const/4 v0, 0x0

    const-string/jumbo v1, "package_name"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "isSMFreezed"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v1, "extras"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string/jumbo v1, "resetTime"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string/jumbo v1, "packageType"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "autoRun"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string/jumbo v1, "isAppOptTarget"

    aput-object v1, v2, v0

    .restart local v2    # "projection":[Ljava/lang/String;
    goto/16 :goto_31

    .line 548
    :catch_b5
    move-exception v13

    .line 549
    .local v13, "e":Ljava/lang/Exception;
    const-string v0, "MARsDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception with contentResolver : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3e

    .line 572
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v14    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    :cond_d7
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 576
    .end local v14    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    :goto_da
    return-object v14

    .line 575
    :cond_db
    const-string v0, "MARsDBManager"

    const-string/jumbo v1, "getManagedPackagesFromDB no database!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/4 v14, 0x0

    goto :goto_da
.end method

.method private getPackageType(Landroid/content/pm/PackageInfo;)I
    .registers 7
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 1094
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1095
    .local v2, "sourceDir":Ljava/lang/String;
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1096
    .local v1, "pkgName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1099
    .local v0, "packageType":I
    if-eqz v1, :cond_11

    invoke-direct {p0, v1}, isShowIconPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1100
    or-int/lit8 v0, v0, 0x1

    .line 1104
    :cond_11
    if-eqz v2, :cond_25

    const-string v3, "/data/app"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_25

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_25

    .line 1105
    or-int/lit8 v0, v0, 0x2

    .line 1109
    :cond_25
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_35

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_37

    .line 1111
    :cond_35
    or-int/lit8 v0, v0, 0x4

    .line 1115
    :cond_37
    if-eqz v1, :cond_41

    invoke-direct {p0, v1}, isDeviceAdminPackages(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 1116
    or-int/lit8 v0, v0, 0x8

    .line 1120
    :cond_41
    if-eqz v1, :cond_4b

    invoke-direct {p0, p1}, isIntentReceivingPackages(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 1121
    or-int/lit8 v0, v0, 0x10

    .line 1125
    :cond_4b
    if-eqz v1, :cond_55

    invoke-direct {p0, p1}, isDisablePossiblePackage(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 1126
    or-int/lit8 v0, v0, 0x20

    .line 1130
    :cond_55
    invoke-direct {p0, p1}, isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 1131
    or-int/lit8 v0, v0, 0x40

    .line 1135
    :cond_5d
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_67

    .line 1136
    or-int/lit16 v0, v0, 0x80

    .line 1140
    :cond_67
    if-eqz v2, :cond_73

    const-string v3, "/system/app"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 1141
    or-int/lit16 v0, v0, 0x100

    .line 1145
    :cond_73
    if-eqz v2, :cond_7f

    const-string v3, "/system/priv-app"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 1146
    or-int/lit16 v0, v0, 0x200

    .line 1150
    :cond_7f
    if-eqz v1, :cond_89

    invoke-direct {p0, v1}, isPreloadedPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 1151
    or-int/lit16 v0, v0, 0x400

    .line 1168
    :cond_89
    if-eqz v2, :cond_95

    const-string v3, "/system/container"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 1169
    or-int/lit16 v0, v0, 0x2000

    .line 1173
    :cond_95
    if-eqz v2, :cond_a1

    const-string v3, "/vendor/app"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 1174
    or-int/lit16 v0, v0, 0x4000

    .line 1178
    :cond_a1
    if-eqz v2, :cond_af

    const-string v3, "/data/app-private"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_af

    .line 1179
    const v3, 0x8000

    or-int/2addr v0, v3

    .line 1183
    :cond_af
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x40000

    and-int/2addr v3, v4

    if-eqz v3, :cond_bb

    .line 1184
    const/high16 v3, 0x10000

    or-int/2addr v0, v3

    .line 1188
    :cond_bb
    if-eqz v1, :cond_c6

    invoke-direct {p0, p1}, isAutoRunDefaultOffExceptionPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 1189
    const/high16 v3, 0x20000

    or-int/2addr v0, v3

    .line 1192
    :cond_c6
    return v0
.end method

.method private getSettingsValueFromDB()V
    .registers 15

    .prologue
    const/4 v13, 0x0

    .line 582
    const-string/jumbo v6, "key"

    .line 583
    .local v6, "SETTING_KEY":Ljava/lang/String;
    const-string/jumbo v7, "value"

    .line 584
    .local v7, "SETTING_VALUE":Ljava/lang/String;
    const/4 v11, -0x1

    .line 585
    .local v11, "nLockingTime":I
    const/4 v12, -0x1

    .line 587
    .local v12, "nSpcmSwitch":I
    const/4 v8, 0x0

    .line 590
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_a
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "key"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_27} :catch_81

    move-result-object v8

    .line 598
    :goto_28
    if-eqz v8, :cond_a5

    .line 599
    :cond_2a
    :goto_2a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 600
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 603
    .local v10, "key":Ljava/lang/String;
    :try_start_34
    const-string/jumbo v0, "spcm_locking_time"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 604
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 605
    iget-object v0, p0, mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0, v11}, Lcom/android/server/am/MARsPolicyManager;->setPackagesUnusedLockingTime(I)V

    .line 608
    :cond_4b
    const-string/jumbo v0, "spcm_switch"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 609
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 610
    iget-object v0, p0, mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0, v12}, Lcom/android/server/am/MARsPolicyManager;->setAllPoliciesOnOffState(I)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_62} :catch_63

    goto :goto_2a

    .line 613
    :catch_63
    move-exception v9

    .line 614
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "MARsDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception with parseInt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 593
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "key":Ljava/lang/String;
    :catch_81
    move-exception v9

    .line 594
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v0, "MARsDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception with contentResolver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28

    .line 618
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_a2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 620
    :cond_a5
    return-void
.end method

.method private initManagedPackagesInternal()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 500
    invoke-direct {p0}, checkSmDBVersion()V

    .line 502
    invoke-direct {p0}, getManagedPackagesFromDB()Ljava/util/ArrayList;

    move-result-object v1

    .line 503
    .local v1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    if-eqz v1, :cond_29

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_29

    .line 504
    iget-object v2, p0, mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsPolicyManager;->updateManagedPackages(Ljava/util/ArrayList;)V

    .line 521
    :cond_16
    :goto_16
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, SMART_MGR_URI:Landroid/net/Uri;

    new-instance v4, Lcom/android/server/am/MARsDBManager$SmartManagerObserver;

    iget-object v5, p0, mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-direct {v4, p0, v5}, Lcom/android/server/am/MARsDBManager$SmartManagerObserver;-><init>(Lcom/android/server/am/MARsDBManager;Landroid/os/Handler;)V

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 523
    return-void

    .line 505
    :cond_29
    if-eqz v1, :cond_51

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_51

    .line 506
    iget-boolean v2, p0, mOldVersion:Z

    if-nez v2, :cond_16

    iget-boolean v2, p0, mDBUpdated:Z

    if-nez v2, :cond_16

    .line 507
    iget-object v2, p0, mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->isAppOptUIAvailable()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 508
    const/4 v2, 0x0

    invoke-direct {p0, v3, v2, v3}, updateDBForApp(ZLjava/util/ArrayList;Z)V

    .line 514
    :goto_45
    iput-boolean v6, p0, mDBUpdated:Z

    goto :goto_16

    .line 510
    :cond_48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .local v0, "ownPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    invoke-direct {p0, v6, v0, v3}, updateDBForApp(ZLjava/util/ArrayList;Z)V

    goto :goto_45

    .line 518
    .end local v0    # "ownPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    :cond_51
    const-string v2, "MARsDBManager"

    const-string v3, "Packages database not exist, and not created!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method private insertPackage(Ljava/lang/String;)V
    .registers 22
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1400
    const/4 v13, 0x0

    .line 1401
    .local v13, "packageType":I
    const/4 v14, 0x0

    .line 1402
    .local v14, "pi":Landroid/content/pm/PackageInfo;
    const/16 v11, 0x100f

    .line 1405
    .local v11, "flags":I
    const/4 v8, 0x0

    .line 1406
    .local v8, "cursor":Landroid/database/Cursor;
    const-string/jumbo v5, "package_name=?"

    .line 1407
    .local v5, "where":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v6, v2

    .line 1408
    .local v6, "selectionArgs":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1412
    .local v9, "duplicated":Z
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, SMART_MGR_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v17, "package_name"

    aput-object v17, v4, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1415
    if-eqz v8, :cond_70

    .line 1416
    :cond_2b
    :goto_2b
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 1417
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 1418
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1419
    .local v12, "packageName":Ljava/lang/String;
    if-eqz v12, :cond_2b

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1420
    const-string v2, "MARsDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is already exist in DB!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    const/4 v9, 0x1

    goto :goto_2b

    .line 1425
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_6a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1426
    if-eqz v9, :cond_70

    .line 1453
    :cond_6f
    :goto_6f
    return-void

    .line 1430
    :cond_70
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v11, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 1433
    if-eqz v14, :cond_6f

    iget-object v2, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_6f

    .line 1434
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, getPackageType(Landroid/content/pm/PackageInfo;)I

    move-result v13

    .line 1436
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 1438
    .local v16, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "package_name"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    const-string/jumbo v2, "isSMFreezed"

    const-string v3, "0"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    const-string/jumbo v2, "resetTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    move-object/from16 v0, p0

    iget-boolean v2, v0, mOldVersion:Z

    if-nez v2, :cond_c9

    .line 1442
    const-string/jumbo v2, "packageType"

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    :cond_c9
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, SMART_MGR_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    .line 1446
    .local v15, "uri":Landroid/net/Uri;
    const-string v2, "MARsDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertPackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_100
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_100} :catch_102
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_100} :catch_11f

    goto/16 :goto_6f

    .line 1448
    .end local v15    # "uri":Landroid/net/Uri;
    .end local v16    # "values":Landroid/content/ContentValues;
    :catch_102
    move-exception v10

    .line 1449
    .local v10, "e":Landroid/os/RemoteException;
    const-string v2, "MARsDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error getting package info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6f

    .line 1450
    .end local v10    # "e":Landroid/os/RemoteException;
    :catch_11f
    move-exception v10

    .line 1451
    .local v10, "e":Ljava/lang/Exception;
    const-string v2, "MARsDBManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception with contentResolver : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6f
.end method

.method private isAutoRunDefaultOffExceptionPackage(Landroid/content/pm/PackageInfo;)Z
    .registers 7
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 1080
    const/4 v0, 0x0

    .line 1081
    .local v0, "PermissionFound":Z
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 1082
    .local v2, "perms":[Ljava/lang/String;
    if-eqz v2, :cond_18

    .line 1083
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v3, v2

    if-ge v1, v3, :cond_18

    .line 1084
    aget-object v3, v2, v1

    if-eqz v3, :cond_19

    aget-object v3, v2, v1

    const-string v4, "com.sec.android.EXCEPTION_AUTORUN_DEFAULT_OFF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1085
    const/4 v0, 0x1

    .line 1090
    .end local v1    # "i":I
    :cond_18
    return v0

    .line 1083
    .restart local v1    # "i":I
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method private isCarrierPackage(Ljava/lang/String;)Z
    .registers 12
    .param p1, "pkgname"    # Ljava/lang/String;

    .prologue
    .line 863
    const/16 v8, 0xb

    new-array v1, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "com.sk"

    aput-object v9, v1, v8

    const/4 v8, 0x1

    const-string v9, "com.kt"

    aput-object v9, v1, v8

    const/4 v8, 0x2

    const-string v9, "com.lg"

    aput-object v9, v1, v8

    const/4 v8, 0x3

    const-string v9, "com.estsoft.alyac"

    aput-object v9, v1, v8

    const/4 v8, 0x4

    const-string v9, "com.uplus"

    aput-object v9, v1, v8

    const/4 v8, 0x5

    const-string v9, "com.tmobile"

    aput-object v9, v1, v8

    const/4 v8, 0x6

    const-string v9, "com.sprint"

    aput-object v9, v1, v8

    const/4 v8, 0x7

    const-string v9, "com.vzw"

    aput-object v9, v1, v8

    const/16 v8, 0x8

    const-string v9, "com.verizon"

    aput-object v9, v1, v8

    const/16 v8, 0x9

    const-string v9, "com.att"

    aput-object v9, v1, v8

    const/16 v8, 0xa

    const-string v9, "com.mizmowireless"

    aput-object v9, v1, v8

    .line 868
    .local v1, "carrierStartingStr":[Ljava/lang/String;
    const/16 v8, 0x96

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "com.elevenst.deals"

    aput-object v9, v6, v8

    const/4 v8, 0x1

    const-string v9, "com.elevenst"

    aput-object v9, v6, v8

    const/4 v8, 0x2

    const-string v9, "com.iloen.melon"

    aput-object v9, v6, v8

    const/4 v8, 0x3

    const-string v9, "com.nate.android.portalmini"

    aput-object v9, v6, v8

    const/4 v8, 0x4

    const-string v9, "com.tms"

    aput-object v9, v6, v8

    const/4 v8, 0x5

    const-string v9, "com.cyworld.camera"

    aput-object v9, v6, v8

    const/4 v8, 0x6

    const-string v9, "com.moent.vas"

    aput-object v9, v6, v8

    const/4 v8, 0x7

    const-string v9, "com.mnet.app"

    aput-object v9, v6, v8

    const/16 v8, 0x8

    const-string v9, "com.amazon.mShop.android"

    aput-object v9, v6, v8

    const/16 v8, 0x9

    const-string v9, "com.mobitv.client.tmobiletvhd"

    aput-object v9, v6, v8

    const/16 v8, 0xa

    const-string v9, "com.lookout"

    aput-object v9, v6, v8

    const/16 v8, 0xb

    const-string v9, "com.customermobile.preload"

    aput-object v9, v6, v8

    const/16 v8, 0xc

    const-string v9, "com.whitepages.nameid.tmobile"

    aput-object v9, v6, v8

    const/16 v8, 0xd

    const-string/jumbo v9, "us.com.dt.iq.appsource.tmobile"

    aput-object v9, v6, v8

    const/16 v8, 0xe

    const-string v9, "com.smithmicro.mnd"

    aput-object v9, v6, v8

    const/16 v8, 0xf

    const-string v9, "com.smithmicro.EDM"

    aput-object v9, v6, v8

    const/16 v8, 0x10

    const-string v9, "com.locationlabs.sparkle.yellow.pre"

    aput-object v9, v6, v8

    const/16 v8, 0x11

    const-string v9, "com.coremobility.app.vnotes"

    aput-object v9, v6, v8

    const/16 v8, 0x12

    const-string v9, "com.lookout"

    aput-object v9, v6, v8

    const/16 v8, 0x13

    const-string v9, "com.oem.smartwifisupport"

    aput-object v9, v6, v8

    const/16 v8, 0x14

    const-string v9, "com.kineto.smartwifi"

    aput-object v9, v6, v8

    const/16 v8, 0x15

    const-string v9, "com.itsoninc.android.uid"

    aput-object v9, v6, v8

    const/16 v8, 0x16

    const-string v9, "com.itsoninc.android.itsonservice"

    aput-object v9, v6, v8

    const/16 v8, 0x17

    const-string v9, "com.telenav.app.android.scout_us"

    aput-object v9, v6, v8

    const/16 v8, 0x18

    const-string v9, "com.mobitv.client.sprinttvng"

    aput-object v9, v6, v8

    const/16 v8, 0x19

    const-string v9, "com.nextradioapp.nextradio"

    aput-object v9, v6, v8

    const/16 v8, 0x1a

    const-string v9, "com.nbadigital.gametimelite"

    aput-object v9, v6, v8

    const/16 v8, 0x1b

    const-string v9, "com.nascar.nascarmobile"

    aput-object v9, v6, v8

    const/16 v8, 0x1c

    const-string v9, "com.pinsight.v1"

    aput-object v9, v6, v8

    const/16 v8, 0x1d

    const-string/jumbo v9, "msgplus.jibe.sca"

    aput-object v9, v6, v8

    const/16 v8, 0x1e

    const-string v9, "com.handmark.expressweather"

    aput-object v9, v6, v8

    const/16 v8, 0x1f

    const-string v9, "com.amazon.mShop"

    aput-object v9, v6, v8

    const/16 v8, 0x20

    const-string v9, "com.familyandco.familywall"

    aput-object v9, v6, v8

    const/16 v8, 0x21

    const-string v9, "com.locationlabs.finder.sprint"

    aput-object v9, v6, v8

    const/16 v8, 0x22

    const-string v9, "com.ubercab"

    aput-object v9, v6, v8

    const/16 v8, 0x23

    const-string v9, "com.spotify.music"

    aput-object v9, v6, v8

    const/16 v8, 0x24

    const-string v9, "com.airg"

    aput-object v9, v6, v8

    const/16 v8, 0x25

    const-string v9, "com.soleo.numbersearch"

    aput-object v9, v6, v8

    const/16 v8, 0x26

    const-string v9, "com.livewiremobile.musicstore.boost"

    aput-object v9, v6, v8

    const/16 v8, 0x27

    const-string v9, "com.wipit.android.boostwallet"

    aput-object v9, v6, v8

    const/16 v8, 0x28

    const-string v9, "com.birdstep.android.cm"

    aput-object v9, v6, v8

    const/16 v8, 0x29

    const-string v9, "com.instagram.android"

    aput-object v9, v6, v8

    const/16 v8, 0x2a

    const-string v9, "com.nq.live.sprintid"

    aput-object v9, v6, v8

    const/16 v8, 0x2b

    const-string v9, "com.mobiroo.xgen"

    aput-object v9, v6, v8

    const/16 v8, 0x2c

    const-string v9, "com.pinsight.eureka.offers"

    aput-object v9, v6, v8

    const/16 v8, 0x2d

    const-string v9, "com.wipit.sprintmoneyexpress"

    aput-object v9, v6, v8

    const/16 v8, 0x2e

    const-string v9, "com.ebay.mobile"

    aput-object v9, v6, v8

    const/16 v8, 0x2f

    const-string v9, "com.asurion.android.mobilerecovery.sprint"

    aput-object v9, v6, v8

    const/16 v8, 0x30

    const-string v9, "com.itsoninc.android.itsonclient"

    aput-object v9, v6, v8

    const/16 v8, 0x31

    const-string v9, "com.onelouder.baconreader"

    aput-object v9, v6, v8

    const/16 v8, 0x32

    const-string v9, "com.livewiremobile.musicstore.vmu"

    aput-object v9, v6, v8

    const/16 v8, 0x33

    const-string v9, "com.amazon.mShop.android"

    aput-object v9, v6, v8

    const/16 v8, 0x34

    const-string v9, "com.cequint.ecid"

    aput-object v9, v6, v8

    const/16 v8, 0x35

    const-string v9, "com.nqmobile.antivirus20.uscc"

    aput-object v9, v6, v8

    const/16 v8, 0x36

    const-string v9, "com.mobitv.client.uscctv"

    aput-object v9, v6, v8

    const/16 v8, 0x37

    const-string v9, "com.synchronoss.sm"

    aput-object v9, v6, v8

    const/16 v8, 0x38

    const-string v9, "com.LogiaGroup.LogiaDeck"

    aput-object v9, v6, v8

    const/16 v8, 0x39

    const-string v9, "com.telenav.app.android.uscc"

    aput-object v9, v6, v8

    const/16 v8, 0x3a

    const-string v9, "com.zed.TrdWapLauncher"

    aput-object v9, v6, v8

    const/16 v8, 0x3b

    const-string v9, "com.privacystar.android.metro"

    aput-object v9, v6, v8

    const/16 v8, 0x3c

    const-string v9, "com.lookout"

    aput-object v9, v6, v8

    const/16 v8, 0x3d

    const-string v9, "com.whitepages.metro411"

    aput-object v9, v6, v8

    const/16 v8, 0x3e

    const-string v9, "com.handmark.metro.launcher"

    aput-object v9, v6, v8

    const/16 v8, 0x3f

    const-string v9, "com.mobileposse.client"

    aput-object v9, v6, v8

    const/16 v8, 0x40

    const-string v9, "com.nuance.nmc.sihome.metropcs"

    aput-object v9, v6, v8

    const/16 v8, 0x41

    const-string v9, "com.metro.simlock"

    aput-object v9, v6, v8

    const/16 v8, 0x42

    const-string v9, "com.metropcs.service.vvm"

    aput-object v9, v6, v8

    const/16 v8, 0x43

    const-string v9, "com.amazon.kindle"

    aput-object v9, v6, v8

    const/16 v8, 0x44

    const-string v9, "com.amazon.mp3"

    aput-object v9, v6, v8

    const/16 v8, 0x45

    const-string v9, "com.amazon.venezia"

    aput-object v9, v6, v8

    const/16 v8, 0x46

    const-string v9, "com.amazon.mShop.android"

    aput-object v9, v6, v8

    const/16 v8, 0x47

    const-string v9, "com.audible.application"

    aput-object v9, v6, v8

    const/16 v8, 0x48

    const-string v9, "com.imdb.mobile"

    aput-object v9, v6, v8

    const/16 v8, 0x49

    const-string v9, "com.amazon.fv"

    aput-object v9, v6, v8

    const/16 v8, 0x4a

    const-string v9, "com.gotv.nflgamecenter.us.lite"

    aput-object v9, v6, v8

    const/16 v8, 0x4b

    const-string v9, "com.slacker.radio"

    aput-object v9, v6, v8

    const/16 v8, 0x4c

    const-string v9, "com.telecomsys.directedsms.android.SCG"

    aput-object v9, v6, v8

    const/16 v8, 0x4d

    const-string v9, "com.asurion.android.verizon.vms"

    aput-object v9, v6, v8

    const/16 v8, 0x4e

    const-string v9, "com.LogiaGroup.LogiaDeck"

    aput-object v9, v6, v8

    const/16 v8, 0x4f

    const-string v9, "com.vznavigator.Generic"

    aput-object v9, v6, v8

    const/16 v8, 0x50

    const-string v9, "com.cequint.ecid"

    aput-object v9, v6, v8

    const/16 v8, 0x51

    const-string v9, "com.motricity.verizon.ssodownloadable"

    aput-object v9, v6, v8

    const/16 v8, 0x52

    const-string v9, "com.vcast.mediamanager"

    aput-object v9, v6, v8

    const/16 v8, 0x53

    const-string v9, "com.fusionone.android.sync.vzbuaclient"

    aput-object v9, v6, v8

    const/16 v8, 0x54

    const-string/jumbo v9, "net.aetherpal.device"

    aput-object v9, v6, v8

    const/16 v8, 0x55

    const-string v9, "com.yahoo.mobile.client.android.yahoo.att"

    aput-object v9, v6, v8

    const/16 v8, 0x56

    const-string v9, "com.yahoo.mobile.client.android.mail.att"

    aput-object v9, v6, v8

    const/16 v8, 0x57

    const-string v9, "com.asurison.android.mobilerecovery.att"

    aput-object v9, v6, v8

    const/16 v8, 0x58

    const-string v9, "com.telenav.app.android.cingular"

    aput-object v9, v6, v8

    const/16 v8, 0x59

    const-string v9, "com.drivemode"

    aput-object v9, v6, v8

    const/16 v8, 0x5a

    const-string v9, "com.locationlabs.sparkle.blue"

    aput-object v9, v6, v8

    const/16 v8, 0x5b

    const-string v9, "com.lookout"

    aput-object v9, v6, v8

    const/16 v8, 0x5c

    const-string v9, "com.mobitv.client.tv"

    aput-object v9, v6, v8

    const/16 v8, 0x5d

    const-string v9, "com.locationlabs.cni.att"

    aput-object v9, v6, v8

    const/16 v8, 0x5e

    const-string v9, "com.yellowpages.android.ypmobile"

    aput-object v9, v6, v8

    const/16 v8, 0x5f

    const-string v9, "com.wavemarket.waplauncher"

    aput-object v9, v6, v8

    const/16 v8, 0x60

    const-string v9, "com.ubercab"

    aput-object v9, v6, v8

    const/16 v8, 0x61

    const-string v9, "com.amazon.mShop.android"

    aput-object v9, v6, v8

    const/16 v8, 0x62

    const-string v9, "com.ampsvc.android"

    aput-object v9, v6, v8

    const/16 v8, 0x63

    const-string v9, "com.americanexpress.plenti"

    aput-object v9, v6, v8

    const/16 v8, 0x64

    const-string v9, "com.synchronoss.dcs.att.r2g"

    aput-object v9, v6, v8

    const/16 v8, 0x65

    const-string v9, "com.cequint.ecid"

    aput-object v9, v6, v8

    const/16 v8, 0x66

    const-string v9, "com.amazon.kindle"

    aput-object v9, v6, v8

    const/16 v8, 0x67

    const-string v9, "com.matchboxmobile.wisp"

    aput-object v9, v6, v8

    const/16 v8, 0x68

    const-string v9, "com.quickmobile.att.experienceweekend2014"

    aput-object v9, v6, v8

    const/16 v8, 0x69

    const-string v9, "com.themarketingarm.attexpressions"

    aput-object v9, v6, v8

    const/16 v8, 0x6a

    const-string v9, "com.welldoc.diabetesmanager"

    aput-object v9, v6, v8

    const/16 v8, 0x6b

    const-string v9, "com.xora.att"

    aput-object v9, v6, v8

    const/16 v8, 0x6c

    const-string/jumbo v9, "deezer.android.app"

    aput-object v9, v6, v8

    const/16 v8, 0x6d

    const-string v9, "com.quickplay.android.bellmediaplayer"

    aput-object v9, v6, v8

    const/16 v8, 0x6e

    const-string v9, "ca.bell.selfserve.mybellmobile"

    aput-object v9, v6, v8

    const/16 v8, 0x6f

    const-string v9, "com.bell.ptt"

    aput-object v9, v6, v8

    const/16 v8, 0x70

    const-string v9, "ca.bell.wt.android.tunesappswidget"

    aput-object v9, v6, v8

    const/16 v8, 0x71

    const-string v9, "com.suretap.suretap_wallet"

    aput-object v9, v6, v8

    const/16 v8, 0x72

    const-string v9, "com.fivemobile.myaccount"

    aput-object v9, v6, v8

    const/16 v8, 0x73

    const-string v9, "com.rogers.npd.appzone"

    aput-object v9, v6, v8

    const/16 v8, 0x74

    const-string v9, "com.nhl.gc1112.free"

    aput-object v9, v6, v8

    const/16 v8, 0x75

    const-string v9, "com.rogers.citytv.phone"

    aput-object v9, v6, v8

    const/16 v8, 0x76

    const-string v9, "com.telus.myaccount"

    aput-object v9, v6, v8

    const/16 v8, 0x77

    const-string v9, "com.telus.featuredapps"

    aput-object v9, v6, v8

    const/16 v8, 0x78

    const-string v9, "com.koodo.selfserve"

    aput-object v9, v6, v8

    const/16 v8, 0x79

    const-string v9, "com.android.settings"

    aput-object v9, v6, v8

    const/16 v8, 0x7a

    const-string v9, "com.videotron.android.portail.launcher"

    aput-object v9, v6, v8

    const/16 v8, 0x7b

    const-string v9, "ca.windmobile.selfcare.prod"

    aput-object v9, v6, v8

    const/16 v8, 0x7c

    const-string v9, "com.pelmorex.WeatherEyeAndroid"

    aput-object v9, v6, v8

    const/16 v8, 0x7d

    const-string v9, "ca.bell.wt.android.mobilewallet"

    aput-object v9, v6, v8

    const/16 v8, 0x7e

    const-string v9, "ca.virginmobile.myaccount.virginmobile"

    aput-object v9, v6, v8

    const/16 v8, 0x7f

    const-string v9, "com.atm.downloadandroid"

    aput-object v9, v6, v8

    const/16 v8, 0x80

    const-string v9, "com.fido.npd.appzone"

    aput-object v9, v6, v8

    const/16 v8, 0x81

    const-string v9, "com.fidosolutions.myaccount"

    aput-object v9, v6, v8

    const/16 v8, 0x82

    const-string v9, "com.gameloft.microwidget"

    aput-object v9, v6, v8

    const/16 v8, 0x83

    const-string v9, "com.rogers.citytv.tablet"

    aput-object v9, v6, v8

    const/16 v8, 0x84

    const-string v9, "com.Rogers.MyRogersTab"

    aput-object v9, v6, v8

    const/16 v8, 0x85

    const-string v9, "com.Rogers.OnDemand"

    aput-object v9, v6, v8

    const/16 v8, 0x86

    const-string v9, "com.rogers.suretap_wallet"

    aput-object v9, v6, v8

    const/16 v8, 0x87

    const-string v9, "com.rogers.voip"

    aput-object v9, v6, v8

    const/16 v8, 0x88

    const-string v9, "com.telenav.app.android.bell"

    aput-object v9, v6, v8

    const/16 v8, 0x89

    const-string v9, "com.communitake.remotecontrolservice"

    aput-object v9, v6, v8

    const/16 v8, 0x8a

    const-string v9, "com.gameloft.android.gdc"

    aput-object v9, v6, v8

    const/16 v8, 0x8b

    const-string v9, "com.nim.rogers"

    aput-object v9, v6, v8

    const/16 v8, 0x8c

    const-string v9, "com.ubercab"

    aput-object v9, v6, v8

    const/16 v8, 0x8d

    const-string v9, "com.Fido.Ringtones"

    aput-object v9, v6, v8

    const/16 v8, 0x8e

    const-string v9, "com.Fido.Shop"

    aput-object v9, v6, v8

    const/16 v8, 0x8f

    const-string v9, "com.gameloft.android.Rogers.GloftPA13"

    aput-object v9, v6, v8

    const/16 v8, 0x90

    const-string v9, "com.quickplay.rodo"

    aput-object v9, v6, v8

    const/16 v8, 0x91

    const-string v9, "com.Rogers.OneNumber"

    aput-object v9, v6, v8

    const/16 v8, 0x92

    const-string v9, "com.Rogers.Ringtones"

    aput-object v9, v6, v8

    const/16 v8, 0x93

    const-string v9, "com.Rogers.Shop"

    aput-object v9, v6, v8

    const/16 v8, 0x94

    const-string v9, "com.telenav.app.android.fido"

    aput-object v9, v6, v8

    const/16 v8, 0x95

    const-string v9, "com.telenav.app.android.rogers"

    aput-object v9, v6, v8

    .line 1044
    .local v6, "mCarrierPackageWhitelist":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_3c5
    if-ge v4, v5, :cond_3d8

    aget-object v2, v0, v4

    .line 1045
    .local v2, "compStr":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3d5

    .line 1046
    const/4 v8, 0x1

    .line 1055
    .end local v2    # "compStr":Ljava/lang/String;
    :goto_3d4
    return v8

    .line 1044
    .restart local v2    # "compStr":Ljava/lang/String;
    :cond_3d5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c5

    .line 1049
    .end local v2    # "compStr":Ljava/lang/String;
    :cond_3d8
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3d9
    array-length v8, v6

    if-ge v3, v8, :cond_3e9

    .line 1050
    aget-object v7, v6, v3

    .line 1051
    .local v7, "packagename":Ljava/lang/String;
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3e6

    .line 1052
    const/4 v8, 0x1

    goto :goto_3d4

    .line 1049
    :cond_3e6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d9

    .line 1055
    .end local v7    # "packagename":Ljava/lang/String;
    :cond_3e9
    const/4 v8, 0x0

    goto :goto_3d4
.end method

.method private isDeviceAdminPackages(Ljava/lang/String;)Z
    .registers 6
    .param p1, "pkgname"    # Ljava/lang/String;

    .prologue
    .line 1059
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1060
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1062
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const v3, 0x8080

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1064
    .local v0, "Packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_21

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_21

    .line 1065
    const/4 v2, 0x1

    .line 1067
    :goto_20
    return v2

    :cond_21
    const/4 v2, 0x0

    goto :goto_20
.end method

.method private isDisablePossiblePackage(Landroid/content/pm/PackageInfo;)Z
    .registers 9
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v4, 0x0

    .line 796
    invoke-direct {p0, p1}, isSystemPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 810
    :cond_7
    :goto_7
    return v4

    .line 801
    :cond_8
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 802
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 803
    .local v0, "homeActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 804
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_32

    .line 805
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 806
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 804
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 810
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_32
    const/4 v4, 0x1

    goto :goto_7
.end method

.method private isIntentReceivingPackages(Landroid/content/pm/PackageInfo;)Z
    .registers 4
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 1071
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 1073
    .local v0, "receivers":[Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_9

    array-length v1, v0

    if-lez v1, :cond_9

    .line 1074
    const/4 v1, 0x1

    .line 1076
    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method private isPreloadedPackage(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkgname"    # Ljava/lang/String;

    .prologue
    .line 852
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, cscpkgName:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 853
    iget-object v2, p0, cscpkgName:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 854
    .local v1, "packagename":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 855
    const/4 v2, 0x1

    .line 858
    .end local v1    # "packagename":Ljava/lang/String;
    :goto_18
    return v2

    .line 852
    .restart local v1    # "packagename":Ljava/lang/String;
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 858
    .end local v1    # "packagename":Ljava/lang/String;
    :cond_1c
    const/4 v2, 0x0

    goto :goto_18
.end method

.method private isShowIconPackage(Ljava/lang/String;)Z
    .registers 7
    .param p1, "pkgname"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 815
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 816
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 817
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 819
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 820
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_24

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_24

    .line 821
    const/4 v2, 0x1

    .line 823
    :cond_24
    return v2
.end method

.method private isSystemPackage(Landroid/content/pm/PackageInfo;)Z
    .registers 8
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 832
    const-string v3, "com.sec.enterprise.knox.express"

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 847
    :cond_c
    :goto_c
    return v1

    .line 836
    :cond_d
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_17

    move v1, v2

    .line 837
    goto :goto_c

    .line 840
    :cond_17
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v5, "android"

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 843
    .local v0, "match":I
    if-gez v0, :cond_c

    move v1, v2

    .line 847
    goto :goto_c
.end method

.method private loadPkgnameForCSC(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 661
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 662
    .local v3, "startDepth":I
    const-string/jumbo v0, "favorite"

    .line 665
    .local v0, "CSC_TAG":Ljava/lang/String;
    iget-object v5, p0, cscpkgName:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 666
    :cond_c
    :goto_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    const/4 v5, 0x3

    if-ne v4, v5, :cond_19

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v3, :cond_1c

    .line 667
    :cond_19
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1d

    .line 679
    :cond_1c
    return-void

    .line 669
    :cond_1d
    const/4 v5, 0x2

    if-eq v4, v5, :cond_c

    .line 672
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 674
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 675
    const/4 v5, 0x0

    const-string/jumbo v6, "packageName"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 676
    .local v1, "cscpkg":Ljava/lang/String;
    iget-object v5, p0, cscpkgName:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c
.end method

.method private updateAutoRunTargetXmlToDB()V
    .registers 19

    .prologue
    .line 719
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 720
    .local v17, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    const-string v16, "/data/system/.aasa/AutoRunTarget.xml"

    .line 721
    .local v16, "path":Ljava/lang/String;
    const-string v11, "PACKAGES"

    .line 723
    .local v11, "features":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 724
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_17

    .line 792
    :cond_16
    :goto_16
    return-void

    .line 728
    :cond_17
    if-eqz v12, :cond_16

    .line 731
    const/4 v13, 0x0

    .line 733
    .local v13, "fileReader":Ljava/io/FileReader;
    :try_start_1a
    new-instance v13, Ljava/io/FileReader;

    .end local v13    # "fileReader":Ljava/io/FileReader;
    invoke-direct {v13, v12}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1f} :catch_3b

    .line 740
    .restart local v13    # "fileReader":Ljava/io/FileReader;
    if-eqz v13, :cond_6a

    .line 743
    :try_start_21
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v15

    .line 744
    .local v15, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v15, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 746
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    .line 747
    .local v10, "eventType":I
    :goto_2c
    const/4 v3, 0x1

    if-eq v10, v3, :cond_67

    .line 748
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 749
    .local v14, "name":Ljava/lang/String;
    packed-switch v10, :pswitch_data_a0

    .line 760
    :cond_36
    :goto_36
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_39
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_21 .. :try_end_39} :catch_5f
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_39} :catch_92

    move-result v10

    .line 761
    goto :goto_2c

    .line 735
    .end local v10    # "eventType":I
    .end local v13    # "fileReader":Ljava/io/FileReader;
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_3b
    move-exception v9

    .line 736
    .local v9, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_16

    .line 751
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    .restart local v10    # "eventType":I
    .restart local v13    # "fileReader":Ljava/io/FileReader;
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_40
    :try_start_40
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 752
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    .line 753
    .local v4, "pkgName":Ljava/lang/String;
    if-eqz v4, :cond_36

    .line 754
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    .local v2, "smdbValue":Lcom/android/server/am/MARsDBManager$SMDBValue;
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_40 .. :try_end_5e} :catch_5f
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_5e} :catch_92

    goto :goto_36

    .line 764
    .end local v2    # "smdbValue":Lcom/android/server/am/MARsDBManager$SMDBValue;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v10    # "eventType":I
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_5f
    move-exception v9

    .line 766
    .local v9, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_60
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_9b

    .line 770
    :goto_63
    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_16

    .line 762
    .end local v9    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v10    # "eventType":I
    .restart local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_67
    :try_start_67
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_6a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_67 .. :try_end_6a} :catch_5f
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_92

    .line 783
    .end local v10    # "eventType":I
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_6a
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 785
    if-eqz v17, :cond_16

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_16

    .line 786
    const-string v3, "MARsDBManager"

    const-string/jumbo v5, "updateAutoRunTargetXmlToDB!"

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const/16 v3, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v1}, updateDBAll(ILjava/util/ArrayList;)V

    .line 790
    move-object/from16 v0, p0

    iget-object v3, v0, mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct/range {p0 .. p0}, getManagedPackagesFromDB()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/MARsPolicyManager;->updateManagedPackages(Ljava/util/ArrayList;)V

    goto :goto_16

    .line 773
    :catch_92
    move-exception v9

    .line 775
    .local v9, "e":Ljava/io/IOException;
    :try_start_93
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_9d

    .line 779
    :goto_96
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_16

    .line 768
    .local v9, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_9b
    move-exception v3

    goto :goto_63

    .line 777
    .local v9, "e":Ljava/io/IOException;
    :catch_9d
    move-exception v3

    goto :goto_96

    .line 749
    nop

    :pswitch_data_a0
    .packed-switch 0x2
        :pswitch_40
    .end packed-switch
.end method

.method private updateCSCPackagesList()V
    .registers 13

    .prologue
    .line 682
    const-string v0, "/system/csc/default_application_order.xml"

    .line 683
    .local v0, "CSC_FILE":Ljava/lang/String;
    const/4 v1, 0x0

    .line 686
    .local v1, "cscFile":Ljava/io/FileReader;
    const/4 v6, 0x0

    .line 687
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_4
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 688
    .local v3, "cscFileChk":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_33

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_33

    .line 689
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_1e} :catch_3e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1e} :catch_54
    .catchall {:try_start_4 .. :try_end_1e} :catchall_6a

    .line 690
    .end local v1    # "cscFile":Ljava/io/FileReader;
    .local v2, "cscFile":Ljava/io/FileReader;
    :try_start_1e
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 691
    .local v5, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 692
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 693
    invoke-interface {v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 694
    if-eqz v6, :cond_32

    .line 695
    invoke-direct {p0, v6}, loadPkgnameForCSC(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_32
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_32} :catch_7c
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_32} :catch_79
    .catchall {:try_start_1e .. :try_end_32} :catchall_76

    :cond_32
    move-object v1, v2

    .line 707
    .end local v2    # "cscFile":Ljava/io/FileReader;
    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v1    # "cscFile":Ljava/io/FileReader;
    :cond_33
    if-eqz v1, :cond_38

    .line 709
    :try_start_35
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_39

    .line 716
    .end local v3    # "cscFileChk":Ljava/io/File;
    :cond_38
    :goto_38
    return-void

    .line 711
    .restart local v3    # "cscFileChk":Ljava/io/File;
    :catch_39
    move-exception v4

    .line 712
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_38

    .line 698
    .end local v3    # "cscFileChk":Ljava/io/File;
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_3e
    move-exception v4

    .line 699
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3f
    :try_start_3f
    const-string v7, "MARsDBManager"

    const-string v8, "XmlPullParserException in updateCSCPackagesList"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_6a

    .line 707
    if-eqz v1, :cond_38

    .line 709
    :try_start_4b
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_38

    .line 711
    :catch_4f
    move-exception v4

    .line 712
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_38

    .line 702
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_54
    move-exception v4

    .line 703
    .local v4, "e":Ljava/io/IOException;
    :goto_55
    :try_start_55
    const-string v7, "MARsDBManager"

    const-string v8, "IOException in updateCSCPackagesList"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5f
    .catchall {:try_start_55 .. :try_end_5f} :catchall_6a

    .line 707
    if-eqz v1, :cond_38

    .line 709
    :try_start_61
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_38

    .line 711
    :catch_65
    move-exception v4

    .line 712
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_38

    .line 707
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_6a
    move-exception v7

    :goto_6b
    if-eqz v1, :cond_70

    .line 709
    :try_start_6d
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_70} :catch_71

    .line 713
    :cond_70
    :goto_70
    throw v7

    .line 711
    :catch_71
    move-exception v4

    .line 712
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_70

    .line 707
    .end local v1    # "cscFile":Ljava/io/FileReader;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "cscFile":Ljava/io/FileReader;
    .restart local v3    # "cscFileChk":Ljava/io/File;
    :catchall_76
    move-exception v7

    move-object v1, v2

    .end local v2    # "cscFile":Ljava/io/FileReader;
    .restart local v1    # "cscFile":Ljava/io/FileReader;
    goto :goto_6b

    .line 702
    .end local v1    # "cscFile":Ljava/io/FileReader;
    .restart local v2    # "cscFile":Ljava/io/FileReader;
    :catch_79
    move-exception v4

    move-object v1, v2

    .end local v2    # "cscFile":Ljava/io/FileReader;
    .restart local v1    # "cscFile":Ljava/io/FileReader;
    goto :goto_55

    .line 698
    .end local v1    # "cscFile":Ljava/io/FileReader;
    .restart local v2    # "cscFile":Ljava/io/FileReader;
    :catch_7c
    move-exception v4

    move-object v1, v2

    .end local v2    # "cscFile":Ljava/io/FileReader;
    .restart local v1    # "cscFile":Ljava/io/FileReader;
    goto :goto_3f
.end method

.method private updateDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 24
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "isDefaultFreezed"    # Ljava/lang/String;
    .param p3, "isSmFreezed"    # Ljava/lang/String;
    .param p4, "isUserForceStopped"    # Ljava/lang/String;
    .param p5, "lastUsedTime"    # Ljava/lang/String;
    .param p6, "versionMgmt"    # Ljava/lang/String;
    .param p7, "extras"    # Ljava/lang/String;
    .param p8, "resetTime"    # Ljava/lang/String;
    .param p9, "notifiedCount"    # Ljava/lang/String;
    .param p10, "readCount"    # Ljava/lang/String;
    .param p11, "packageType"    # Ljava/lang/String;
    .param p12, "autoRun"    # Ljava/lang/String;
    .param p13, "isAppOptTarget"    # Ljava/lang/String;

    .prologue
    .line 1474
    const/4 v2, 0x0

    .line 1476
    .local v2, "nRet":I
    if-nez p1, :cond_b

    .line 1477
    const-string v7, "MARsDBManager"

    const-string/jumbo v8, "parameter is error!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    :cond_b
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1483
    .local v6, "values":Landroid/content/ContentValues;
    if-eqz p1, :cond_18

    const-string/jumbo v7, "package_name"

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    :cond_18
    if-eqz p2, :cond_20

    const-string/jumbo v7, "isDefaultFreezed"

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    :cond_20
    if-eqz p3, :cond_28

    const-string/jumbo v7, "isSMFreezed"

    invoke-virtual {v6, v7, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    :cond_28
    if-eqz p4, :cond_30

    const-string/jumbo v7, "isUserForceStopped"

    invoke-virtual {v6, v7, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    :cond_30
    if-eqz p5, :cond_38

    const-string/jumbo v7, "lastUsedTime"

    invoke-virtual {v6, v7, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    :cond_38
    if-eqz p6, :cond_42

    const-string/jumbo v7, "versionMgmt"

    move-object/from16 v0, p6

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    :cond_42
    if-eqz p7, :cond_4c

    const-string/jumbo v7, "extras"

    move-object/from16 v0, p7

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    :cond_4c
    if-eqz p8, :cond_56

    const-string/jumbo v7, "resetTime"

    move-object/from16 v0, p8

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    :cond_56
    if-eqz p9, :cond_60

    const-string/jumbo v7, "notifiedCount"

    move-object/from16 v0, p9

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    :cond_60
    if-eqz p10, :cond_6a

    const-string/jumbo v7, "readCount"

    move-object/from16 v0, p10

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    :cond_6a
    if-eqz p11, :cond_74

    const-string/jumbo v7, "packageType"

    move-object/from16 v0, p11

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    :cond_74
    if-eqz p12, :cond_7d

    const-string v7, "autoRun"

    move-object/from16 v0, p12

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    :cond_7d
    if-eqz p13, :cond_87

    const-string/jumbo v7, "isAppOptTarget"

    move-object/from16 v0, p13

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    :cond_87
    const-string/jumbo v3, "package_name=?"

    .line 1500
    .local v3, "selection":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v4, v7

    .line 1503
    .local v4, "selectionArgs":[Ljava/lang/String;
    :try_start_90
    iget-object v7, p0, SMART_MGR_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "MARs-self"

    const-string/jumbo v9, "true"

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 1504
    .local v5, "uri":Landroid/net/Uri;
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v5, v6, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_ac} :catch_ae

    move-result v2

    .line 1509
    .end local v5    # "uri":Landroid/net/Uri;
    :goto_ad
    return-void

    .line 1505
    :catch_ae
    move-exception v1

    .line 1506
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "MARsDBManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception with update() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ad
.end method

.method private updateDBAll(ILjava/util/ArrayList;)V
    .registers 22
    .param p1, "columns"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SMDBValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1329
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    :try_start_0
    const-string v2, "MARsDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateDBAll : begin --size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_6b

    .line 1331
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/MARsDBManager$SMDBValue;

    .line 1332
    .local v16, "dbvalue":Lcom/android/server/am/MARsDBManager$SMDBValue;
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgName:Ljava/lang/String;

    .line 1333
    .local v3, "pkgName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1334
    .local v10, "resetTime":Ljava/lang/String;
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_3e

    .line 1335
    move-object/from16 v0, v16

    iget-object v10, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strResetTime:Ljava/lang/String;

    .line 1337
    :cond_3e
    const/4 v9, 0x0

    .line 1338
    .local v9, "extras":Ljava/lang/String;
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_47

    .line 1339
    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strExtras:Ljava/lang/String;

    .line 1341
    :cond_47
    const/4 v13, 0x0

    .line 1342
    .local v13, "packageType":Ljava/lang/String;
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_50

    .line 1343
    move-object/from16 v0, v16

    iget-object v13, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    .line 1345
    :cond_50
    const/4 v14, 0x0

    .line 1346
    .local v14, "autoRun":Ljava/lang/String;
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_59

    .line 1347
    move-object/from16 v0, v16

    iget-object v14, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    .line 1350
    :cond_59
    if-eqz v3, :cond_68

    .line 1351
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v15}, updateDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    :cond_68
    add-int/lit8 v18, v18, 0x1

    goto :goto_1f

    .line 1357
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v9    # "extras":Ljava/lang/String;
    .end local v10    # "resetTime":Ljava/lang/String;
    .end local v13    # "packageType":Ljava/lang/String;
    .end local v14    # "autoRun":Ljava/lang/String;
    .end local v16    # "dbvalue":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_6b
    const-string v2, "MARsDBManager"

    const-string/jumbo v4, "updateDBAll : end"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_73} :catch_74

    .line 1362
    .end local v18    # "i":I
    :goto_73
    return-void

    .line 1358
    :catch_74
    move-exception v17

    .line 1359
    .local v17, "e":Ljava/lang/Exception;
    const-string v2, "MARsDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception on handling DB : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_73
.end method

.method private updateDBForApp(ZLjava/util/ArrayList;Z)V
    .registers 35
    .param p1, "generate"    # Z
    .param p3, "onUpgrade"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SMDBValue;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1203
    .local p2, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v4, :cond_2f

    .line 1204
    const-string v4, "MARsDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateDBForApp, --- generate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " --onUpgrade = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    .line 1209
    .local v23, "pm":Landroid/content/pm/PackageManager;
    const/16 v12, 0x100f

    .line 1212
    .local v12, "flags":I
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v16

    .line 1214
    .local v16, "installedPackagesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, cscpkgName:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_4c

    .line 1218
    invoke-direct/range {p0 .. p0}, updateCSCPackagesList()V

    .line 1227
    :cond_4c
    :try_start_4c
    move-object/from16 v0, p0

    iget-object v4, v0, mPreviousPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 1228
    if-eqz p3, :cond_bf

    .line 1229
    const/4 v10, 0x0

    .line 1230
    .local v10, "cursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, SMART_MGR_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "package_name"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1233
    if-eqz v10, :cond_bf

    .line 1234
    :cond_74
    :goto_74
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_bc

    .line 1235
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_74

    .line 1236
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1238
    .local v18, "packageName":Ljava/lang/String;
    if-eqz v18, :cond_74

    .line 1239
    move-object/from16 v0, p0

    iget-object v4, v0, mPreviousPackages:Landroid/util/ArrayMap;

    new-instance v5, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_9a} :catch_9b

    goto :goto_74

    .line 1318
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v18    # "packageName":Ljava/lang/String;
    :catch_9b
    move-exception v11

    .line 1319
    .local v11, "e":Ljava/lang/Exception;
    const-string v4, "MARsDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception on handling DB : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 1322
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_bb
    :goto_bb
    return-void

    .line 1243
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :cond_bc
    :try_start_bc
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1247
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_bf
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v30

    .line 1248
    .local v30, "valuesSize":I
    if-eqz p3, :cond_cf

    .line 1249
    move-object/from16 v0, p0

    iget-object v4, v0, mPreviousPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int v30, v30, v4

    .line 1252
    :cond_cf
    const/16 v25, 0x64

    .line 1253
    .local v25, "splitSize":I
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 1254
    .local v29, "valuesList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const/4 v14, 0x0

    .line 1255
    .local v14, "index":I
    const/16 v24, 0x0

    .line 1258
    .local v24, "split":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_da
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v4

    if-ge v13, v4, :cond_1c8

    .line 1259
    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/PackageInfo;

    .line 1260
    .local v20, "pi":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1261
    .local v22, "pkgname":Ljava/lang/String;
    const/16 v19, 0x0

    .line 1263
    .local v19, "packageType":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, getPackageType(Landroid/content/pm/PackageInfo;)I

    move-result v19

    .line 1266
    if-eqz p3, :cond_125

    move-object/from16 v0, p0

    iget-object v4, v0, mPreviousPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-eqz v4, :cond_125

    move-object/from16 v0, p0

    iget-object v4, v0, mPreviousPackages:Landroid/util/ArrayMap;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_125

    .line 1268
    move-object/from16 v0, p0

    iget-object v4, v0, mPreviousPackages:Landroid/util/ArrayMap;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/MARsDBManager$SMDBValue;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    .line 1258
    :cond_122
    :goto_122
    add-int/lit8 v13, v13, 0x1

    goto :goto_da

    .line 1272
    :cond_125
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .line 1273
    .local v28, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "package_name"

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    const-string/jumbo v4, "isSMFreezed"

    const-string v5, "0"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    const-string/jumbo v4, "packageType"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    if-nez v14, :cond_158

    .line 1278
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 1279
    .local v26, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1282
    .end local v26    # "subList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_158
    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/List;

    .line 1283
    .local v27, "tmpList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v27, :cond_1bf

    .line 1284
    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move-object/from16 v0, v28

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1291
    add-int/lit8 v14, v14, 0x1

    .line 1293
    move/from16 v0, v25

    if-eq v14, v0, :cond_181

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v13, v4, :cond_1a2

    .line 1294
    :cond_181
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v4

    new-array v15, v4, [Landroid/content/ContentValues;

    .line 1295
    .local v15, "insertValues":[Landroid/content/ContentValues;
    move-object/from16 v0, v27

    invoke-interface {v0, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1298
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, SMART_MGR_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v15}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 1300
    move/from16 v0, v25

    if-ne v14, v0, :cond_1a2

    .line 1301
    add-int/lit8 v24, v24, 0x1

    .line 1302
    const/4 v14, 0x0

    .line 1306
    .end local v15    # "insertValues":[Landroid/content/ContentValues;
    :cond_1a2
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_122

    and-int/lit8 v4, v19, 0x2

    if-eqz v4, :cond_122

    .line 1307
    new-instance v21, Lcom/android/server/am/MARsDBManager$SMDBValue;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;)V

    .line 1308
    .local v21, "pkg":Lcom/android/server/am/MARsDBManager$SMDBValue;
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_122

    .line 1287
    .end local v21    # "pkg":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :cond_1bf
    const-string v4, "MARsDBManager"

    const-string v5, "Unfortunately error !!!! "

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_122

    .line 1313
    .end local v19    # "packageType":I
    .end local v20    # "pi":Landroid/content/pm/PackageInfo;
    .end local v22    # "pkgname":Ljava/lang/String;
    .end local v27    # "tmpList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v28    # "values":Landroid/content/ContentValues;
    :cond_1c8
    if-eqz p3, :cond_bb

    move-object/from16 v0, p0

    iget-object v4, v0, mPreviousPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-eqz v4, :cond_bb

    .line 1314
    move-object/from16 v0, p0

    iget-object v4, v0, mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/server/am/MARsDBManager$DBHandler;->removeMessages(I)V

    .line 1315
    move-object/from16 v0, p0

    iget-object v4, v0, mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    .line 1316
    .local v17, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const-wide/32 v6, 0xea60

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v6, v7}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1f3
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_1f3} :catch_9b

    goto/16 :goto_bb
.end method

.method private updateDBSpecific(Ljava/lang/String;ILcom/android/server/am/MARsDBManager$SMDBValue;)V
    .registers 20
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "columns"    # I
    .param p3, "value"    # Lcom/android/server/am/MARsDBManager$SMDBValue;

    .prologue
    .line 1368
    if-eqz p1, :cond_4

    if-nez p3, :cond_5

    .line 1397
    :cond_4
    :goto_4
    return-void

    .line 1373
    :cond_5
    const/4 v9, 0x0

    .line 1374
    .local v9, "resetTime":Ljava/lang/String;
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_e

    .line 1375
    :try_start_a
    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strResetTime:Ljava/lang/String;

    .line 1377
    :cond_e
    const/4 v8, 0x0

    .line 1378
    .local v8, "extras":Ljava/lang/String;
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_17

    .line 1379
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strExtras:Ljava/lang/String;

    .line 1381
    :cond_17
    const/4 v12, 0x0

    .line 1382
    .local v12, "packageType":Ljava/lang/String;
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_20

    .line 1383
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strPkgType:Ljava/lang/String;

    .line 1385
    :cond_20
    const/4 v13, 0x0

    .line 1386
    .local v13, "autoRun":Ljava/lang/String;
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_29

    .line 1387
    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/server/am/MARsDBManager$SMDBValue;->strAutoRun:Ljava/lang/String;

    .line 1390
    :cond_29
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v14}, updateDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_38} :catch_39

    goto :goto_4

    .line 1393
    .end local v8    # "extras":Ljava/lang/String;
    .end local v12    # "packageType":Ljava/lang/String;
    .end local v13    # "autoRun":Ljava/lang/String;
    :catch_39
    move-exception v15

    .line 1394
    .local v15, "e":Ljava/lang/Exception;
    const-string v1, "MARsDBManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception on handling DB : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method


# virtual methods
.method public deletePackageInDB(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 440
    iget-object v2, p0, mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 442
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 443
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 446
    iget-object v2, p0, mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 447
    return-void
.end method

.method public initManagedPackages()V
    .registers 4

    .prologue
    .line 341
    iget-object v1, p0, mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 342
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 343
    return-void
.end method

.method public initSKTPackagesWhiteList()V
    .registers 7

    .prologue
    .line 366
    iget-object v1, p0, mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 367
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 369
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, SMART_MGR_EXCLUDED_APP_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;

    iget-object v5, p0, mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-direct {v4, p0, v5}, Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;-><init>(Lcom/android/server/am/MARsDBManager;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 371
    return-void
.end method

.method public initSettingFromUI()V
    .registers 7

    .prologue
    .line 351
    iget-object v1, p0, mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->isAppOptUIAvailable()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 352
    iget-object v1, p0, mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 353
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 355
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;

    iget-object v5, p0, mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-direct {v4, p0, v5}, Lcom/android/server/am/MARsDBManager$SmartManagerSettingsObserver;-><init>(Lcom/android/server/am/MARsDBManager;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 358
    .end local v0    # "msg":Landroid/os/Message;
    :cond_27
    return-void
.end method

.method public insertPackageToDB(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 427
    iget-object v2, p0, mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 429
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 430
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 433
    iget-object v2, p0, mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 434
    return-void
.end method

.method public requestFillInDB(Z)V
    .registers 6
    .param p1, "onUpgrade"    # Z

    .prologue
    const/4 v3, 0x7

    .line 378
    iget-object v2, p0, mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsDBManager$DBHandler;->removeMessages(I)V

    .line 379
    iget-object v2, p0, mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 381
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 382
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "onUpgrade"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 383
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 385
    iget-object v2, p0, mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 386
    return-void
.end method

.method public updateAutoRun()V
    .registers 4

    .prologue
    const/16 v2, 0xb

    .line 453
    iget-object v1, p0, mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsDBManager$DBHandler;->removeMessages(I)V

    .line 454
    iget-object v1, p0, mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 456
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 457
    return-void
.end method

.method public updateResetTime(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsDBManager$SMDBValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    const/4 v2, 0x3

    .line 410
    iget-object v1, p0, mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsDBManager$DBHandler;->removeMessages(I)V

    .line 411
    iget-object v1, p0, mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 415
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mUpdateResetTimeValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_1a

    .line 416
    iget-object v1, p0, mUpdateResetTimeValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 417
    iget-object v1, p0, mUpdateResetTimeValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 420
    :cond_1a
    iget-object v1, p0, mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 421
    return-void
.end method

.method public updateResetTimeSpecific(Ljava/lang/String;JLjava/lang/String;)V
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "strExtras"    # Ljava/lang/String;

    .prologue
    .line 395
    iget-object v2, p0, mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsDBManager$DBHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 397
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 398
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string/jumbo v2, "time"

    invoke-virtual {v0, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 400
    const-string/jumbo v2, "strExtras"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 403
    iget-object v2, p0, mDBHandler:Lcom/android/server/am/MARsDBManager$DBHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/MARsDBManager$DBHandler;->sendMessage(Landroid/os/Message;)Z

    .line 404
    return-void
.end method
