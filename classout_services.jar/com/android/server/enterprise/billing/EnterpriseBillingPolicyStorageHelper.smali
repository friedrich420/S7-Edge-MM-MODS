.class public Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;
.super Ljava/lang/Object;
.source "EnterpriseBillingPolicyStorageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;
    }
.end annotation


# static fields
.field protected static final ACTIVATE_PROFILE:Ljava/lang/String; = "activate"

.field public static final ACTIVE_APN_PROFILE_NAME:Ljava/lang/String; = "active_profile_table"

.field protected static final ADMIN_UID:Ljava/lang/String; = "adminUid"

.field protected static final ALLOW_ON_ROAMING:Ljava/lang/String; = "allow_on_roaming"

.field protected static final ALLOW_ON_WIFI:Ljava/lang/String; = "allow_on_wifi"

.field protected static final ALLOW_SPLIT_BILLING:Ljava/lang/String; = "allow_split_billing"

.field protected static final APN:Ljava/lang/String; = "apn"

.field public static final APP_UID:Ljava/lang/String; = "app_uid"

.field public static final CALLER_ID:Ljava/lang/String; = "caller_id"

.field protected static final CONTAINER_ID:Ljava/lang/String; = "container_id"

.field protected static final CREATOR_ID:Ljava/lang/String; = "profile_creator"

.field public static final DEFAULT_APN_TYPE:Ljava/lang/String; = "default_type"

.field protected static final DEFAULT_FALSE_VALUE:I = 0x0

.field protected static final DEFAULT_TRUE_VALUE:I = 0x1

.field public static final EAPN_MAPPING_TABLE_NAME:Ljava/lang/String; = "eapn_mapping_table"

.field public static final EAPN_TYPE:Ljava/lang/String; = "eapn_type"

.field public static final ID:Ljava/lang/String; = "_id"

.field protected static final MCC:Ljava/lang/String; = "mcc"

.field protected static final MNC:Ljava/lang/String; = "mnc"

.field public static final NOT_USED:Ljava/lang/String; = "-1"

.field protected static final PACKAGE_NAME:Ljava/lang/String; = "package"

.field public static final PERMANENT_ID:I = 0x186a1

.field protected static final PROFILES_SETTINGS_TABLE_NAME:Ljava/lang/String; = "eb_profile_settings_table"

.field protected static final PROFILES_TABLE_NAME:Ljava/lang/String; = "eb_profiles_table"

.field protected static final PROFILE_MAPPING_TABLE:Ljava/lang/String; = "eb_mapping_table"

.field protected static final PROFILE_NAME:Ljava/lang/String; = "profile_name"

.field protected static final TAG:Ljava/lang/String; = "EnterpriseBillingPolicyStorage"

.field protected static final TURN_ON_PROFILE:Ljava/lang/String; = "turn_on"

.field public static final TYPES:[Ljava/lang/String;

.field public static final UID_EXCEPTION_LIST_TABLE_NAME:Ljava/lang/String; = "uid_exception_list"

.field protected static final VPN_CONTAINER_ID:Ljava/lang/String; = "vpn_container_id"

.field private static final VPN_PACKAGE_NAME:Ljava/lang/String; = "vpn_package_name"

.field protected static final VPN_PACKGE_NAME:Ljava/lang/String; = "vpn_vendor_packge_name"

.field protected static final VPN_PROFILES_TABLE_NAME:Ljava/lang/String; = "eb_vpn_profiles_table"

.field protected static final VPN_PROFILE_NAME:Ljava/lang/String; = "vpn_profile_name"


# instance fields
.field private mApnSettingsPolicy:Landroid/app/enterprise/ApnSettingsPolicy;

.field private mContext:Landroid/content/Context;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 175
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "ent1"

    aput-object v2, v0, v1

    sput-object v0, TYPES:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object v3, p0, mApnSettingsPolicy:Landroid/app/enterprise/ApnSettingsPolicy;

    .line 184
    iput-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 185
    iput-object v3, p0, mContext:Landroid/content/Context;

    .line 190
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 191
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 194
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eapn_mapping_table"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 202
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_32

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_60

    .line 204
    :cond_32
    if-eqz v9, :cond_37

    .line 205
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_37
    const/4 v9, 0x0

    .line 210
    sget-object v8, TYPES:[Ljava/lang/String;

    .local v8, "arr$":[Ljava/lang/String;
    array-length v11, v8

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_3c
    if-ge v10, v11, :cond_58

    aget-object v12, v8, v10

    .line 212
    .local v12, "type":Ljava/lang/String;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 213
    .local v13, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "eapn_type"

    invoke-virtual {v13, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-direct {p0}, getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eapn_mapping_table"

    invoke-virtual {v0, v1, v3, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 210
    add-int/lit8 v10, v10, 0x1

    goto :goto_3c

    .line 216
    .end local v12    # "type":Ljava/lang/String;
    .end local v13    # "values":Landroid/content/ContentValues;
    :cond_58
    const-string v0, "EnterpriseBillingPolicyStorage"

    const-string v1, "Inserted first time record into \'eapn_mapping_table\' Table"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :goto_5f
    return-void

    .line 219
    :cond_60
    if-eqz v9, :cond_65

    .line 220
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_65
    const/4 v9, 0x0

    goto :goto_5f
.end method

.method private addProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 14
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "mcc"    # Ljava/lang/String;
    .param p3, "mnc"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "adminUid"    # I
    .param p6, "creatorId"    # I

    .prologue
    .line 478
    const-string v2, "EnterpriseBillingPolicyStorage"

    const-string v3, "Adding apn inside EnterpriseBillingPolicyStorageHelper"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/4 v0, 0x0

    .line 481
    .local v0, "returnVal":I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 482
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "profile_name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string/jumbo v2, "mcc"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string/jumbo v2, "mnc"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v2, "apn"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v2, "adminUid"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 487
    const-string/jumbo v2, "profile_creator"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 489
    const-wide/16 v2, -0x1

    invoke-direct {p0}, getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string/jumbo v5, "eb_profiles_table"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_63

    .line 490
    const/4 v0, -0x1

    .line 494
    :goto_4a
    const-string v2, "EnterpriseBillingPolicyStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Record successfully added inside Profile List Table db with returnVal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    return v0

    .line 492
    :cond_63
    const/4 v0, 0x1

    goto :goto_4a
.end method

.method private addProfileforCurrentcontainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 14
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "mcc"    # Ljava/lang/String;
    .param p3, "mnc"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "adminUid"    # I
    .param p6, "creatorId"    # I

    .prologue
    .line 1627
    const-string v2, "EnterpriseBillingPolicyStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding apn inside EnterpriseBillingPolicyStorageHelper "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    const/4 v0, 0x0

    .line 1630
    .local v0, "returnVal":I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1631
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "profile_name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    const-string/jumbo v2, "mcc"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    const-string/jumbo v2, "mnc"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    const-string v2, "apn"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    const-string v2, "adminUid"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1636
    const-string/jumbo v2, "profile_creator"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1638
    const-wide/16 v2, -0x1

    invoke-direct {p0}, getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string/jumbo v5, "eb_profiles_table"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_74

    .line 1639
    const/4 v0, -0x1

    .line 1643
    :goto_5b
    const-string v2, "EnterpriseBillingPolicyStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Record successfully added inside Profile List Table db with returnVal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    return v0

    .line 1641
    :cond_74
    const/4 v0, 0x1

    goto :goto_5b
.end method

.method private checkForProfileAndDeleteSettings(Ljava/lang/String;)V
    .registers 8
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 347
    const-string v1, "EnterpriseBillingPolicyStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkForProfileAndDelete - start - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-direct {p0, p1}, isProfileSettingsAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 349
    const-string v1, "EnterpriseBillingPolicyStorage"

    const-string v2, "checkForProfileAndDelete - setting is still there - "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-direct {p0}, getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "eb_profile_settings_table"

    const-string/jumbo v3, "profile_name =?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 353
    .local v0, "numberOfRecs":I
    const-string v1, "EnterpriseBillingPolicyStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkForProfileAndDelete - setting s deleted - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .end local v0    # "numberOfRecs":I
    :cond_51
    return-void
.end method

.method private checkIfProfileIsthere(Ljava/lang/String;)Z
    .registers 12
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 448
    const/4 v9, 0x0

    .line 449
    .local v9, "returnValue":Z
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIfProfileIsthere - start - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eb_profiles_table"

    const-string/jumbo v3, "profile_name =? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 458
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_3a

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 459
    const/4 v9, 0x1

    .line 461
    :cond_3a
    if-eqz v8, :cond_3f

    .line 462
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 464
    :cond_3f
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkIfProfileIsthere - end - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    return v9
.end method

.method private getEapn(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 1230
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getEapn - start - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    const/4 v9, 0x0

    .line 1232
    .local v9, "eapnType":Ljava/lang/String;
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eapn_mapping_table"

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "eapn_type"

    aput-object v3, v2, v10

    const-string/jumbo v3, "profile_name= ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v10

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1240
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_44

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1241
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1243
    :cond_44
    if-eqz v8, :cond_49

    .line 1244
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1246
    :cond_49
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getEapn - end - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    return-object v9
.end method

.method private getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v0, v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v0, v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private insertProfileSettings(Ljava/lang/String;I)V
    .registers 9
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "adminUid"    # I

    .prologue
    .line 257
    const-string v3, "EnterpriseBillingPolicyStorage"

    const-string/jumbo v4, "insertProfileSettings - start"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 259
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "profile_name"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v3, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 261
    const-wide/16 v0, -0x1

    .line 263
    .local v0, "rows":J
    :try_start_1e
    invoke-direct {p0}, getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string/jumbo v4, "eb_profile_settings_table"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_29} :catch_44

    move-result-wide v0

    .line 266
    :goto_2a
    const-string v3, "EnterpriseBillingPolicyStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "insertProfileSettings - end - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void

    .line 264
    :catch_44
    move-exception v3

    goto :goto_2a
.end method

.method private isProfileSettingsAvailable(Ljava/lang/String;)Z
    .registers 12
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 270
    const/4 v9, 0x0

    .line 272
    .local v9, "isAvailable":Z
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eb_profile_settings_table"

    const-string/jumbo v3, "profile_name =? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 280
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_22

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 281
    const/4 v9, 0x1

    .line 283
    :cond_22
    if-eqz v8, :cond_27

    .line 284
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 287
    :cond_27
    return v9
.end method


# virtual methods
.method protected activateProfile(Ljava/lang/String;Z)Z
    .registers 12
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "isActivate"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1182
    const-string v3, "EnterpriseBillingPolicyStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "activateProfile - start - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1184
    .local v2, "values":Landroid/content/ContentValues;
    const-string v6, "activate"

    if-eqz p2, :cond_63

    move v3, v4

    :goto_2e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1186
    invoke-direct {p0}, getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string/jumbo v6, "eb_profile_settings_table"

    const-string/jumbo v7, "profile_name = ?"

    new-array v8, v4, [Ljava/lang/String;

    aput-object p1, v8, v5

    invoke-virtual {v3, v6, v2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1190
    .local v1, "value":I
    if-lez v1, :cond_65

    move v0, v4

    .line 1191
    .local v0, "returnValue":Z
    :goto_4a
    const-string v3, "EnterpriseBillingPolicyStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activateProfile - end - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    return v0

    .end local v0    # "returnValue":Z
    .end local v1    # "value":I
    :cond_63
    move v3, v5

    .line 1184
    goto :goto_2e

    .restart local v1    # "value":I
    :cond_65
    move v0, v5

    .line 1190
    goto :goto_4a
.end method

.method protected addActiveApnToProfile(Ljava/lang/String;Lcom/sec/enterprise/knox/billing/EnterpriseApn;)Z
    .registers 10
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "apn"    # Lcom/sec/enterprise/knox/billing/EnterpriseApn;

    .prologue
    .line 1453
    const/4 v0, 0x0

    .line 1454
    .local v0, "returnValue":Z
    const-string v4, "EnterpriseBillingPolicyStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addActiveApnToProfile - start - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1457
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "profile_name"

    invoke-virtual {v1, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    const-string v4, "apn"

    iget-object v5, p2, Lcom/sec/enterprise/knox/billing/EnterpriseApn;->apn:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    const-string/jumbo v4, "mcc"

    iget-object v5, p2, Lcom/sec/enterprise/knox/billing/EnterpriseApn;->mcc:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    const-string/jumbo v4, "mnc"

    iget-object v5, p2, Lcom/sec/enterprise/knox/billing/EnterpriseApn;->mnc:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    invoke-direct {p0}, getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "active_profile_table"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 1464
    .local v2, "rows":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_70

    const/4 v0, 0x1

    .line 1466
    :goto_57
    const-string v4, "EnterpriseBillingPolicyStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addActiveApnToProfile - end - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    return v0

    .line 1464
    :cond_70
    const/4 v0, 0x0

    goto :goto_57
.end method

.method protected addApplicationToProfile(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "adminUid"    # I
    .param p4, "containerId"    # I

    .prologue
    .line 305
    const/4 v0, 0x0

    .line 307
    .local v0, "returnVal":I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 308
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "profile_name"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v2, "adminUid"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 311
    const-string v2, "container_id"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 313
    invoke-direct {p0}, getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "eb_mapping_table"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 314
    const-string v2, "EnterpriseBillingPolicyStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " addApplicationToProfile Record successfully added inside Active Profile Table db with returnVal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : containerId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return v0
.end method

.method protected addContainerToProfile(ILjava/lang/String;I)I
    .registers 9
    .param p1, "containerId"    # I
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "adminUid"    # I

    .prologue
    .line 238
    const/4 v0, -0x1

    .line 239
    .local v0, "returnVal":I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 240
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "profile_name"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v2, "container_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 244
    const-string v2, "adminUid"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    invoke-direct {p0}, getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "eb_mapping_table"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 249
    const-string v2, "EnterpriseBillingPolicyStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Record successfully added inside Active Profile Table db with returnVal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : containerId  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return v0
.end method

.method protected addEapnProfileMapping(Ljava/lang/String;Ljava/lang/String;)I
    .registers 13
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "eapnType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1431
    const/4 v2, 0x0

    .line 1433
    .local v2, "returnValue":I
    const-string v6, "EnterpriseBillingPolicyStorage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addEapnProfileMapping - start - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1436
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v6, "profile_name"

    invoke-virtual {v3, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    const-string/jumbo v6, "eapn_type"

    invoke-virtual {v3, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    invoke-direct {p0}, getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string/jumbo v7, "eapn_mapping_table"

    const-string/jumbo v8, "eapn_type = ?"

    new-array v9, v4, [Ljava/lang/String;

    aput-object p2, v9, v5

    invoke-virtual {v6, v7, v3, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    int-to-long v0, v6

    .line 1443
    .local v0, "id":J
    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-eqz v6, :cond_69

    move v2, v4

    .line 1445
    :goto_50
    const-string v4, "EnterpriseBillingPolicyStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addEapnProfileMapping - end - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    return v2

    :cond_69
    move v2, v5

    .line 1443
    goto :goto_50
.end method

.method protected addProfile(Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;II)I
    .registers 14
    .param p1, "profile"    # Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    .param p2, "adminUid"    # I
    .param p3, "creatorId"    # I

    .prologue
    .line 431
    const/4 v9, 0x0

    .line 432
    .local v9, "returnValue":I
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addProfile - start -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, checkIfProfileIsthere(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 434
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;->getApnsFromProfile()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_2b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/enterprise/knox/billing/EnterpriseApn;

    .line 435
    .local v7, "apn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/sec/enterprise/knox/billing/EnterpriseApn;->mcc:Ljava/lang/String;

    iget-object v3, v7, Lcom/sec/enterprise/knox/billing/EnterpriseApn;->mnc:Ljava/lang/String;

    iget-object v4, v7, Lcom/sec/enterprise/knox/billing/EnterpriseApn;->apn:Ljava/lang/String;

    move-object v0, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, addProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    add-int/2addr v9, v0

    .line 436
    goto :goto_2b

    .line 439
    .end local v7    # "apn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_4a
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, isProfileSettingsAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 440
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, insertProfileSettings(Ljava/lang/String;I)V

    .line 443
    :cond_5b
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addProfile- end - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return v9
.end method

.method protected addProfileforCurrentcontainer(Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;II)I
    .registers 14
    .param p1, "profile"    # Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    .param p2, "adminUid"    # I
    .param p3, "creatorId"    # I

    .prologue
    .line 1609
    const/4 v9, 0x0

    .line 1610
    .local v9, "returnValue":I
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addProfile - start -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, checkIfProfileIsthere(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 1612
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;->getApnsFromProfile()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_35
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/enterprise/knox/billing/EnterpriseApn;

    .line 1613
    .local v7, "apn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/sec/enterprise/knox/billing/EnterpriseApn;->mcc:Ljava/lang/String;

    iget-object v3, v7, Lcom/sec/enterprise/knox/billing/EnterpriseApn;->mnc:Ljava/lang/String;

    iget-object v4, v7, Lcom/sec/enterprise/knox/billing/EnterpriseApn;->apn:Ljava/lang/String;

    move-object v0, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, addProfileforCurrentcontainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    add-int/2addr v9, v0

    .line 1614
    goto :goto_35

    .line 1617
    .end local v7    # "apn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_54
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, isProfileSettingsAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 1618
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, insertProfileSettings(Ljava/lang/String;I)V

    .line 1621
    :cond_65
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addProfile- end - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    return v9
.end method

.method public addToUIDExceptionList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1516
    const-string v2, "EnterpriseBillingPolicyStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addToUIDExceptionList is starting inside EnterpriseBillingPolicyStorage"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    const/4 v0, 0x0

    .line 1519
    .local v0, "returnValue":I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1520
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "caller_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    const-string v2, "app_uid"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1522
    const-string/jumbo v2, "vpn_package_name"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    const-wide/16 v2, -0x1

    invoke-direct {p0}, getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string/jumbo v5, "uid_exception_list"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_64

    .line 1524
    const-string v2, "EnterpriseBillingPolicyStorage"

    const-string v3, "add Record Failed inside addToUIDExceptionList "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    const/4 v0, -0x1

    .line 1527
    :cond_64
    const-string v2, "EnterpriseBillingPolicyStorage"

    const-string v3, "Record successfully added inside UID Exception List Table db"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    const-string v2, "EnterpriseBillingPolicyStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addToUIDExceptionList is exiting with returnValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    return v0
.end method

.method public addVpnProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 12
    .param p1, "billingProfileName"    # Ljava/lang/String;
    .param p2, "vpnProfileName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "containerId"    # I
    .param p5, "adminUid"    # I

    .prologue
    .line 904
    const-string v3, "EnterpriseBillingPolicyStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addVpnProfile in ebpHelper - start - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 907
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "profile_name"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    const-string/jumbo v3, "vpn_profile_name"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    const-string/jumbo v3, "vpn_vendor_packge_name"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    const-string/jumbo v3, "vpn_container_id"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 911
    const-string v3, "adminUid"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 912
    invoke-direct {p0}, getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string/jumbo v4, "eb_vpn_profiles_table"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 915
    .local v0, "returnId":J
    const-string v3, "EnterpriseBillingPolicyStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addVpnProfile in ebpHelper - end - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-ltz v3, :cond_7e

    const/4 v3, 0x1

    :goto_7d
    return v3

    :cond_7e
    const/4 v3, 0x0

    goto :goto_7d
.end method

.method protected allowRoaming(Ljava/lang/String;Z)I
    .registers 10
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "allow"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 802
    const-string v2, "EnterpriseBillingPolicyStorage"

    const-string v5, "allowRoaming - start"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 804
    .local v1, "values":Landroid/content/ContentValues;
    const-string v5, "allow_on_roaming"

    if-eqz p2, :cond_4b

    move v2, v3

    :goto_13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 808
    invoke-direct {p0}, getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v5, "eb_profile_settings_table"

    const-string/jumbo v6, "profile_name = ?"

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-virtual {v2, v5, v1, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 809
    .local v0, "returnValue":I
    const-string v2, "EnterpriseBillingPolicyStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowRoaming - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rows updated"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    return v0

    .end local v0    # "returnValue":I
    :cond_4b
    move v2, v4

    .line 804
    goto :goto_13
.end method

.method protected allowWifiFallback(Ljava/lang/String;Z)V
    .registers 10
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "allow"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 790
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 791
    .local v1, "values":Landroid/content/ContentValues;
    const-string v5, "allow_on_wifi"

    if-eqz p2, :cond_44

    move v2, v3

    :goto_c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 795
    invoke-direct {p0}, getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v5, "eb_profile_settings_table"

    const-string/jumbo v6, "profile_name = ?"

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-virtual {v2, v5, v1, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 796
    .local v0, "returnValue":I
    const-string v2, "EnterpriseBillingPolicyStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowWifiFallback - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rows updated"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    return-void

    .end local v0    # "returnValue":I
    :cond_44
    move v2, v4

    .line 791
    goto :goto_c
.end method

.method protected clearActiveApnProfile(Ljava/lang/String;)I
    .registers 8
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1420
    const-string v1, "EnterpriseBillingPolicyStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearActiveApnProfile - start - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    invoke-direct {p0}, getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "active_profile_table"

    const-string/jumbo v3, "profile_name= ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1424
    .local v0, "returnValue":I
    const-string v1, "EnterpriseBillingPolicyStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearActiveApnProfile - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    return v0
.end method

.method protected clearEapnProfile(Ljava/lang/String;)I
    .registers 10
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1405
    const-string v3, "EnterpriseBillingPolicyStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearEapnProfile - start - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    invoke-virtual {p0, p1}, getAssignedEapn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1408
    .local v0, "apn":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1409
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "profile_name"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1410
    const-string/jumbo v3, "default_type"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1411
    invoke-direct {p0}, getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string/jumbo v4, "eapn_mapping_table"

    const-string/jumbo v5, "eapn_type= ? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1413
    .local v1, "returnValue":I
    const-string v3, "EnterpriseBillingPolicyStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearEapnProfile - end - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    return v1
.end method

.method protected deleteActiveProfileApn(Ljava/lang/String;)Z
    .registers 9
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1475
    const-string v3, "EnterpriseBillingPolicyStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deleteActiveProfileApn - start - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    invoke-direct {p0}, getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "active_profile_table"

    const-string/jumbo v5, "profile_name= ? "

    new-array v6, v1, [Ljava/lang/String;

    aput-object p1, v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1481
    .local v0, "rows":I
    const-string v3, "EnterpriseBillingPolicyStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deleteActiveProfileApn - end - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    if-lez v0, :cond_48

    :goto_47
    return v1

    :cond_48
    move v1, v2

    goto :goto_47
.end method

.method protected getActiveApnForProfile(Ljava/lang/String;)Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    .registers 15
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x2

    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1489
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getActiveApnForProfile - start - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    const/4 v8, 0x0

    .line 1492
    .local v8, "apn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "active_profile_table"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "apn"

    aput-object v3, v2, v10

    const-string/jumbo v3, "mcc"

    aput-object v3, v2, v11

    const-string/jumbo v3, "mnc"

    aput-object v3, v2, v12

    const-string/jumbo v3, "profile_name= ? "

    new-array v4, v11, [Ljava/lang/String;

    aput-object p1, v4, v10

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1500
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_5b

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1501
    new-instance v8, Lcom/sec/enterprise/knox/billing/EnterpriseApn;

    .end local v8    # "apn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v0, v1, v2}, Lcom/sec/enterprise/knox/billing/EnterpriseApn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    .restart local v8    # "apn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    :cond_5b
    if-eqz v9, :cond_60

    .line 1504
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1507
    :cond_60
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getActiveApnForProfile - end - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    return-object v8
.end method

.method protected getApplicationsUsingProfile(Ljava/lang/String;)Ljava/util/Map;
    .registers 16
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 748
    const/4 v11, 0x0

    .line 749
    .local v11, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v0, "EnterpriseBillingPolicyStorage"

    const-string/jumbo v1, "getApplicationsUsingProfile - enter"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eb_mapping_table"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "container_id"

    aput-object v3, v2, v12

    const-string/jumbo v3, "package"

    aput-object v3, v2, v13

    const-string/jumbo v3, "profile_name = ? AND package is NOT NULL"

    new-array v4, v13, [Ljava/lang/String;

    aput-object p1, v4, v12

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 760
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_64

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 762
    :cond_34
    if-nez v11, :cond_3b

    .line 763
    new-instance v11, Ljava/util/HashMap;

    .end local v11    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 766
    .restart local v11    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_3b
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 767
    .local v9, "key":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 768
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v10, :cond_50

    .line 769
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 771
    .restart local v10    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_50
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_34

    .line 776
    .end local v9    # "key":I
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_64
    if-eqz v8, :cond_69

    .line 777
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 780
    :cond_69
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getApplicationsUsingProfile - exit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    return-object v11
.end method

.method protected getAssignedEapn(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1225
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAssignedEapn - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    invoke-direct {p0, p1}, getEapn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getAssignedProfile(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "eapnType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 1253
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAssignedProfile - start - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    const/4 v9, 0x0

    .line 1255
    .local v9, "profileName":Ljava/lang/String;
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eapn_mapping_table"

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "profile_name"

    aput-object v3, v2, v10

    const-string/jumbo v3, "eapn_type= ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v10

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1263
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_44

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1264
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1266
    :cond_44
    if-eqz v8, :cond_49

    .line 1267
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1269
    :cond_49
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAssignedProfile - end - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    return-object v9
.end method

.method protected getAvailableEapn()Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 1276
    const-string v0, "EnterpriseBillingPolicyStorage"

    const-string/jumbo v1, "getAvailableEapn - start - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    const/4 v9, 0x0

    .line 1278
    .local v9, "eapnType":Ljava/lang/String;
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eapn_mapping_table"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "eapn_type"

    aput-object v3, v2, v10

    const-string/jumbo v3, "profile_name is null"

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1286
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_30

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1287
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1289
    :cond_30
    if-eqz v8, :cond_35

    .line 1290
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1292
    :cond_35
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAvailableEapn - end - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    return-object v9
.end method

.method protected getAvailableProfiles(I)Ljava/util/List;
    .registers 16
    .param p1, "creatorId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 594
    const/4 v13, 0x0

    .line 595
    .local v13, "profiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAvailableProfiles - enter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "eb_profiles_table"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "profile_name"

    aput-object v5, v3, v4

    const-string/jumbo v4, "profile_creator = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v0 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v11

    .line 607
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_73

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 608
    if-nez v13, :cond_5f

    .line 609
    new-instance v13, Ljava/util/ArrayList;

    .end local v13    # "profiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .restart local v13    # "profiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5f
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 613
    .local v12, "profile":Ljava/lang/String;
    invoke-interface {v13, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 614
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    :cond_6d
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 619
    .end local v12    # "profile":Ljava/lang/String;
    :cond_73
    if-eqz v11, :cond_78

    .line 620
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 622
    :cond_78
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAvailableProfiles - exit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    return-object v13
.end method

.method protected getBillingProfileForVpnEngine(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "vpnVendorPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 1049
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getBillingProfileForVpnEngine - start - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    const/4 v9, 0x0

    .line 1051
    .local v9, "returnValue":Ljava/lang/String;
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eb_vpn_profiles_table"

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "profile_name"

    aput-object v3, v2, v10

    const-string/jumbo v3, "vpn_vendor_packge_name=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1059
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_48

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1060
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1062
    :cond_48
    if-eqz v8, :cond_4d

    .line 1063
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1065
    :cond_4d
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getBillingProfileForVpnEngine - end - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    return-object v9
.end method

.method public getBillingProfileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "vpnProfileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 1026
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getBillingProfileName - start - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    const/4 v9, 0x0

    .line 1028
    .local v9, "returnValue":Ljava/lang/String;
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eb_vpn_profiles_table"

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "profile_name"

    aput-object v3, v2, v10

    const-string/jumbo v3, "vpn_profile_name=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1036
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_48

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1037
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1039
    :cond_48
    if-eqz v8, :cond_4d

    .line 1040
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1042
    :cond_4d
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getBillingProfileName - end - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    return-object v9
.end method

.method protected getContainersUsingProfile(Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 712
    const/4 v9, 0x0

    .line 713
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v0, "EnterpriseBillingPolicyStorage"

    const-string/jumbo v1, "getContainersUsingProfile - enter"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eb_mapping_table"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "container_id"

    aput-object v3, v2, v10

    const-string/jumbo v3, "profile_name = ? AND container_id != ? AND package is NULL"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v10

    const-string v6, "-1"

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 725
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_4b

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 727
    :cond_33
    if-nez v9, :cond_3a

    .line 728
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 730
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3a
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_33

    .line 733
    :cond_4b
    if-eqz v8, :cond_50

    .line 734
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 737
    :cond_50
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getContainersUsingProfile - exit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    return-object v9
.end method

.method protected getCurrentActiveProfileFromActiveProfileList()Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 1381
    const/4 v9, 0x0

    .line 1382
    .local v9, "profileName":Ljava/lang/String;
    const-string v0, "EnterpriseBillingPolicyStorage"

    const-string/jumbo v1, "getCurrentActiveProfileFromActiveProfileList - start - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "active_profile_table"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "profile_name"

    aput-object v3, v2, v10

    const-string/jumbo v3, "profile_name is NOT NULL"

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1391
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2f

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1392
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1394
    :cond_2f
    if-eqz v8, :cond_34

    .line 1395
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1397
    :cond_34
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCurrentActiveProfileFromActiveProfileList - end - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    return-object v9
.end method

.method protected getCurrentActiveProfiles()[Ljava/lang/String;
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x0

    .line 1347
    const/4 v11, 0x0

    .line 1349
    .local v11, "profiles":[Ljava/lang/String;
    const-string v0, "EnterpriseBillingPolicyStorage"

    const-string/jumbo v1, "getCurrentActiveProfiles - start - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eapn_mapping_table"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "profile_name"

    aput-object v3, v2, v12

    const-string/jumbo v3, "profile_name is NOT NULL"

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1359
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_43

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1360
    const/4 v9, 0x0

    .line 1361
    .local v9, "i":I
    if-nez v11, :cond_35

    .line 1362
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v11, v0, [Ljava/lang/String;

    .line 1366
    :cond_35
    :goto_35
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "i":I
    .local v10, "i":I
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v9

    .line 1367
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_66

    .line 1369
    .end local v10    # "i":I
    :cond_43
    if-eqz v8, :cond_48

    .line 1370
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1373
    :cond_48
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCurrentActiveProfiles - end - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    return-object v11

    .restart local v10    # "i":I
    :cond_66
    move v9, v10

    .end local v10    # "i":I
    .restart local v9    # "i":I
    goto :goto_35
.end method

.method protected getDefaultApnType(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 1320
    const/4 v9, 0x0

    .line 1322
    .local v9, "defaultType":Ljava/lang/String;
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDefaultApnType - start - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eapn_mapping_table"

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "default_type"

    aput-object v3, v2, v10

    const-string/jumbo v3, "profile_name= ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v10

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1332
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_44

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1333
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1335
    :cond_44
    if-eqz v8, :cond_49

    .line 1336
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1339
    :cond_49
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDefaultApnType - end - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    return-object v9
.end method

.method public getExceptionUIDList()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 1578
    const-string v0, "EnterpriseBillingPolicyStorage"

    const-string/jumbo v1, "getExceptionUIDList called from VPN"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    const/4 v9, 0x0

    .line 1580
    .local v9, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "uid_exception_list"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "app_uid"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1588
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_3f

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1589
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1591
    .restart local v9    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2e
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1592
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1595
    :cond_3f
    if-eqz v8, :cond_44

    .line 1596
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1598
    :cond_44
    const/4 v8, 0x0

    .line 1600
    const-string v1, "EnterpriseBillingPolicyStorage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getExceptionUIDList returns uid list with size =  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v9, :cond_62

    move v0, v10

    :goto_56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    return-object v9

    .line 1600
    :cond_62
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_56
.end method

.method protected getMatchingApn(Ljava/lang/String;Ljava/util/List;)Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    .registers 15
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/billing/EnterpriseApn;",
            ">;)",
            "Lcom/sec/enterprise/knox/billing/EnterpriseApn;"
        }
    .end annotation

    .prologue
    .line 863
    .local p2, "apns":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMatchingApn - start - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const/4 v10, 0x0

    .line 866
    .local v10, "eapn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    const-string v3, ""

    .line 867
    .local v3, "where_clause":Ljava/lang/String;
    if-eqz p2, :cond_b8

    .line 868
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_2c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/enterprise/knox/billing/EnterpriseApn;

    .line 869
    .local v8, "apn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(apn=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lcom/sec/enterprise/knox/billing/EnterpriseApn;->apn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mnc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lcom/sec/enterprise/knox/billing/EnterpriseApn;->mnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mcc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lcom/sec/enterprise/knox/billing/EnterpriseApn;->mcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\') OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 872
    goto :goto_2c

    .line 873
    .end local v8    # "apn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    :cond_8a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(profile_name = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 877
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_b8
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMatchingApn - whereclause - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eb_profiles_table"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "apn"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "mcc"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "mnc"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 888
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_110

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_110

    .line 889
    new-instance v10, Lcom/sec/enterprise/knox/billing/EnterpriseApn;

    .end local v10    # "eapn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v0, v1, v2}, Lcom/sec/enterprise/knox/billing/EnterpriseApn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    .restart local v10    # "eapn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    :cond_110
    if-eqz v9, :cond_115

    .line 892
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 895
    :cond_115
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMatchingApn - end - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    return-object v10
.end method

.method protected getPerAppsForContainer(I)Ljava/util/List;
    .registers 13
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 562
    const/4 v9, 0x0

    .line 563
    .local v9, "perAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "EnterpriseBillingPolicyStorage"

    const-string/jumbo v1, "getPerAppsForContainer - enter"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eb_mapping_table"

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "package"

    aput-object v3, v2, v10

    const-string v3, "container_id = ? AND package is NOT NULL"

    new-array v4, v4, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 574
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_55

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 576
    :cond_41
    if-nez v9, :cond_48

    .line 577
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "perAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 579
    .restart local v9    # "perAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_48
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_41

    .line 582
    :cond_55
    if-eqz v8, :cond_5a

    .line 583
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 585
    :cond_5a
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPerAppsForContainer - exit  : containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : perAppList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    return-object v9
.end method

.method protected getProfile(Ljava/lang/String;)Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    .registers 16
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 629
    const/4 v13, 0x0

    .line 630
    .local v13, "profile":Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getProfile - enter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eb_profiles_table"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "apn"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "mcc"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "mnc"

    aput-object v4, v2, v3

    const-string/jumbo v3, "profile_name = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 639
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_6f

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 640
    new-instance v13, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;

    .end local v13    # "profile":Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    invoke-direct {v13, p1}, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;-><init>(Ljava/lang/String;)V

    .line 642
    .restart local v13    # "profile":Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    :cond_52
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 643
    .local v8, "apn":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 644
    .local v11, "mcc":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 645
    .local v12, "mnc":Ljava/lang/String;
    new-instance v10, Lcom/sec/enterprise/knox/billing/EnterpriseApn;

    invoke-direct {v10, v8, v11, v12}, Lcom/sec/enterprise/knox/billing/EnterpriseApn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    .local v10, "eapn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    invoke-virtual {v13, v10}, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;->addApnToProfile(Lcom/sec/enterprise/knox/billing/EnterpriseApn;)V

    .line 647
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_52

    .line 650
    .end local v8    # "apn":Ljava/lang/String;
    .end local v10    # "eapn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    .end local v11    # "mcc":Ljava/lang/String;
    .end local v12    # "mnc":Ljava/lang/String;
    :cond_6f
    if-eqz v9, :cond_74

    .line 651
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 653
    :cond_74
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getProfile - exit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    return-object v13
.end method

.method protected getProfileForApplication(Ljava/lang/String;I)Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 685
    const/4 v10, 0x0

    .line 686
    .local v10, "profileName":Ljava/lang/String;
    const-string v0, "EnterpriseBillingPolicyStorage"

    const-string/jumbo v1, "getProfileForApplication - enter"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eb_mapping_table"

    new-array v2, v12, [Ljava/lang/String;

    const-string/jumbo v3, "profile_name"

    aput-object v3, v2, v11

    const-string/jumbo v3, "package = ? AND container_id = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v11

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v12

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 695
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_49

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 696
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 698
    :cond_49
    if-eqz v8, :cond_4e

    .line 699
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 701
    :cond_4e
    const/4 v9, 0x0

    .line 702
    .local v9, "profile":Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    if-eqz v10, :cond_55

    .line 703
    invoke-virtual {p0, v10}, getProfile(Ljava/lang/String;)Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;

    move-result-object v9

    .line 705
    :cond_55
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getProfileForApplication - exit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    return-object v9
.end method

.method protected getProfileForContainer(I)Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    .registers 14
    .param p1, "containerId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 533
    const/4 v10, 0x0

    .line 534
    .local v10, "profileName":Ljava/lang/String;
    const-string v0, "EnterpriseBillingPolicyStorage"

    const-string/jumbo v1, "getProfileForContainer - enter"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eb_mapping_table"

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "profile_name"

    aput-object v3, v2, v11

    const-string v3, "container_id = ? AND package is NULL"

    new-array v4, v4, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v11

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 544
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_45

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 545
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 547
    :cond_45
    if-eqz v8, :cond_4a

    .line 548
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 550
    :cond_4a
    const/4 v9, 0x0

    .line 551
    .local v9, "profile":Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    if-eqz v10, :cond_51

    .line 552
    invoke-virtual {p0, v10}, getProfile(Ljava/lang/String;)Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;

    move-result-object v9

    .line 554
    :cond_51
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getProfileForContainer - exit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : containerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    return-object v9
.end method

.method protected getProfiles(I)[Ljava/lang/String;
    .registers 15
    .param p1, "creatorId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v12, 0x0

    .line 1748
    const/4 v11, 0x0

    .line 1750
    .local v11, "profiles":[Ljava/lang/String;
    const-string v0, "EnterpriseBillingPolicyStorage"

    const-string/jumbo v1, "getProfiles - start - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eb_profiles_table"

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "profile_name"

    aput-object v3, v2, v12

    const-string/jumbo v3, "profile_creator = ? "

    new-array v4, v4, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v12

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1760
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_59

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1761
    const/4 v9, 0x0

    .line 1762
    .local v9, "i":I
    if-nez v11, :cond_4b

    .line 1763
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v11, v0, [Ljava/lang/String;

    .line 1767
    :cond_4b
    :goto_4b
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "i":I
    .local v10, "i":I
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v9

    .line 1768
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 1770
    .end local v10    # "i":I
    :cond_59
    if-eqz v8, :cond_5e

    .line 1771
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1774
    :cond_5e
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getProfiles - end - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    return-object v11

    .restart local v10    # "i":I
    :cond_7c
    move v9, v10

    .end local v10    # "i":I
    .restart local v9    # "i":I
    goto :goto_4b
.end method

.method protected getVpnEngineDetailsForBillingProfile(Ljava/lang/String;)Ljava/util/List;
    .registers 15
    .param p1, "billingProfileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 984
    const/4 v9, 0x0

    .line 985
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;>;"
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getVpnEngineDetailsForBillingProfile - start - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eb_vpn_profiles_table"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "vpn_profile_name"

    aput-object v3, v2, v10

    const-string/jumbo v3, "vpn_vendor_packge_name"

    aput-object v3, v2, v11

    const-string/jumbo v3, "vpn_container_id"

    aput-object v3, v2, v12

    const-string/jumbo v3, "profile_name=?"

    new-array v4, v11, [Ljava/lang/String;

    aput-object p1, v4, v10

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 994
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_6d

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 995
    if-nez v9, :cond_53

    .line 996
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 999
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;>;"
    :cond_53
    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1000
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_53

    .line 1002
    :cond_6d
    if-eqz v8, :cond_72

    .line 1003
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1005
    :cond_72
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getVpnEngineDetailsForBillingProfile - end - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    return-object v9
.end method

.method protected getVpnProfileDetailsIfAddedToSplitBilling(Ljava/lang/String;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;
    .registers 12
    .param p1, "vpnProfileName"    # Ljava/lang/String;

    .prologue
    .line 952
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getVpnProfileDetailsIfAddedToSplitBilling - start - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const/4 v9, 0x0

    .line 955
    .local v9, "vpnEngineDetails":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;
    const/4 v8, 0x0

    .line 957
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_1b
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eb_vpn_profiles_table"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "vpn_vendor_packge_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "vpn_container_id"

    aput-object v4, v2, v3

    const-string/jumbo v3, "vpn_profile_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 969
    if-eqz v8, :cond_58

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 970
    new-instance v9, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;

    .end local v9    # "vpnEngineDetails":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-direct {v9, p1, v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_58
    .catchall {:try_start_1b .. :try_end_58} :catchall_77

    .line 973
    .restart local v9    # "vpnEngineDetails":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;
    :cond_58
    if-eqz v8, :cond_5d

    .line 974
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 977
    :cond_5d
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getVpnProfileDetailsIfAddedToSplitBilling - end - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    return-object v9

    .line 973
    .end local v9    # "vpnEngineDetails":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;
    :catchall_77
    move-exception v0

    if-eqz v8, :cond_7d

    .line 974
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7d
    throw v0
.end method

.method protected getVpnProfilesforBillingProfile(Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .param p1, "billingProfileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 923
    const/4 v9, 0x0

    .line 924
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getVpnProfilesForEnterpriseApn - start - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eb_vpn_profiles_table"

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "vpn_profile_name"

    aput-object v3, v2, v10

    const-string/jumbo v3, "profile_name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v10

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 933
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_54

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 934
    if-nez v9, :cond_47

    .line 935
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 938
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_47
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 939
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_47

    .line 941
    :cond_54
    if-eqz v8, :cond_59

    .line 942
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 944
    :cond_59
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getVpnProfilesForEnterpriseApn - end - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    return-object v9
.end method

.method protected hasMappings(Ljava/lang/String;)Z
    .registers 12
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 371
    const/4 v9, 0x0

    .line 372
    .local v9, "returnValue":Z
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eb_mapping_table"

    const-string/jumbo v3, "profile_name =? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 380
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_22

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 381
    const/4 v9, 0x1

    .line 383
    :cond_22
    if-eqz v8, :cond_27

    .line 384
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 386
    :cond_27
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hasMappings - for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return v9
.end method

.method protected isContainerOperationAllowed(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "containerID"    # I

    .prologue
    .line 1165
    const-string v2, "EnterpriseBillingPolicyStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isContainerOperationAllowed starting - containerID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    invoke-static {p1}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getContainers(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v0

    .line 1168
    .local v0, "containerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 1169
    .local v1, "retValue":Z
    if-eqz v0, :cond_2b

    .line 1170
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1171
    const/4 v1, 0x1

    .line 1175
    :cond_2b
    const-string v2, "EnterpriseBillingPolicyStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isContainerOperationAllowed ending - retValue"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    return v1
.end method

.method protected isEnterpriseAPN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 19
    .param p1, "apnName"    # Ljava/lang/String;
    .param p2, "mcc"    # Ljava/lang/String;
    .param p3, "mnc"    # Ljava/lang/String;

    .prologue
    .line 1825
    const-string v0, "EnterpriseBillingPolicyStorage"

    const-string/jumbo v1, "isEnterpriseAPN Start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    const/4 v13, 0x0

    .line 1828
    .local v13, "returnValue":Z
    const/4 v11, 0x0

    .line 1829
    .local v11, "cursor":Landroid/database/Cursor;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1830
    .local v14, "whereClauseBuilder":Ljava/lang/StringBuilder;
    const-string v0, "apn = ? AND "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1831
    const-string/jumbo v0, "mcc = ? AND "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1832
    const-string/jumbo v0, "mnc = ?"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1835
    :try_start_20
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "eb_profiles_table"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "profile_name"

    aput-object v5, v3, v4

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v0 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v11

    .line 1846
    if-eqz v11, :cond_60

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1848
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1849
    .local v12, "profile":Ljava/lang/String;
    if-eqz v12, :cond_60

    invoke-virtual {v12}, Ljava/lang/String;->length()I
    :try_end_5c
    .catchall {:try_start_20 .. :try_end_5c} :catchall_7f

    move-result v0

    if-lez v0, :cond_60

    .line 1850
    const/4 v13, 0x1

    .line 1854
    .end local v12    # "profile":Ljava/lang/String;
    :cond_60
    if-eqz v11, :cond_65

    .line 1855
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1858
    :cond_65
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEnterpriseAPN End: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    return v13

    .line 1854
    :catchall_7f
    move-exception v0

    if-eqz v11, :cond_85

    .line 1855
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_85
    throw v0
.end method

.method protected isFirstTime()Z
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 1124
    const/4 v9, 0x1

    .line 1125
    .local v9, "isFirstTime":Z
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isFirstTime starting :ReturnValue from  isFirstTime is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eb_mapping_table"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1128
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_34

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1130
    const/4 v9, 0x0

    .line 1132
    :cond_34
    if-eqz v8, :cond_39

    .line 1134
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1136
    :cond_39
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isFirstTime ending :ReturnValue from  isFirstTime is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    return v9
.end method

.method protected isMappingExists(Ljava/lang/String;I)Z
    .registers 14
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "callerUid"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1724
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isProfileMapped - start - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    const/4 v9, 0x0

    .line 1726
    .local v9, "returnVal":Z
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eb_mapping_table"

    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v3, "package"

    aput-object v3, v2, v6

    const-string/jumbo v3, "profile_name = ? AND adminUid = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1734
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_57

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1735
    const/4 v9, 0x1

    .line 1738
    :cond_57
    if-eqz v8, :cond_5c

    .line 1739
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1741
    :cond_5c
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isProfileMapped - end - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    return v9
.end method

.method protected isProfileActive(Ljava/lang/String;)Z
    .registers 14
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1198
    const/4 v9, 0x0

    .line 1199
    .local v9, "returnValue":Z
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isProfileActive starting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eb_profile_settings_table"

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "activate"

    aput-object v3, v2, v11

    const-string/jumbo v3, "profile_name = ?"

    new-array v4, v10, [Ljava/lang/String;

    aput-object p1, v4, v11

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1208
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_46

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1210
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v10, :cond_65

    move v9, v10

    .line 1212
    :cond_46
    :goto_46
    if-eqz v8, :cond_4b

    .line 1214
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1216
    :cond_4b
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isFirstTime ending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    return v9

    :cond_65
    move v9, v11

    .line 1210
    goto :goto_46
.end method

.method protected isProfileAlreadyMapped()Z
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 1144
    const/4 v9, 0x0

    .line 1145
    .local v9, "retVal":Z
    const-string v0, "EnterpriseBillingPolicyStorage"

    const-string/jumbo v1, "isProfileAlreadyMapped starting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eb_mapping_table"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1148
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_23

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1150
    const/4 v9, 0x1

    .line 1152
    :cond_23
    if-eqz v8, :cond_28

    .line 1154
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1156
    :cond_28
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isProfileAlreadyMapped ending :ReturnValue from  retVal is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    return v9
.end method

.method protected isProfileAvailable(Ljava/lang/String;)Z
    .registers 12
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 660
    const/4 v9, 0x0

    .line 661
    .local v9, "returnValue":Z
    if-eqz p1, :cond_60

    .line 662
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isProfileAvailable - enter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eb_profiles_table"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "apn"

    aput-object v3, v2, v6

    const-string/jumbo v3, "profile_name = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 671
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_42

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 672
    const/4 v9, 0x1

    .line 674
    :cond_42
    if-eqz v8, :cond_47

    .line 675
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 677
    :cond_47
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isProfileAvailable - exit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_60
    return v9
.end method

.method protected isProfileMapped(Ljava/lang/String;)Z
    .registers 12
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1700
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isProfileMapped - start - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    const/4 v9, 0x0

    .line 1702
    .local v9, "returnVal":Z
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eb_mapping_table"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "container_id"

    aput-object v3, v2, v6

    const-string/jumbo v3, "profile_name = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1710
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_40

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1711
    const/4 v9, 0x1

    .line 1714
    :cond_40
    if-eqz v8, :cond_45

    .line 1715
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1717
    :cond_45
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isProfileMapped - end - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    return v9
.end method

.method protected isProfileTurnedOn(Ljava/lang/String;)Z
    .registers 14
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 393
    const/4 v9, 0x1

    .line 394
    .local v9, "returnValue":Z
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eb_profile_settings_table"

    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v3, "turn_on"

    aput-object v3, v2, v11

    const-string/jumbo v3, "profile_name=?"

    new-array v4, v10, [Ljava/lang/String;

    aput-object p1, v4, v11

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 402
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2e

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 403
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v10, :cond_34

    move v9, v10

    .line 405
    :cond_2e
    :goto_2e
    if-eqz v8, :cond_33

    .line 406
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 409
    :cond_33
    return v9

    :cond_34
    move v9, v11

    .line 403
    goto :goto_2e
.end method

.method protected isProfileValidForACreator(Ljava/lang/String;I)Z
    .registers 14
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "creatorId"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v10, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1650
    const/4 v9, 0x0

    .line 1651
    .local v9, "returnValue":Z
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isProfileValidForACreator - enter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    if-eqz p1, :cond_72

    .line 1653
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eb_profiles_table"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "apn"

    aput-object v3, v2, v6

    const-string/jumbo v3, "mcc"

    aput-object v3, v2, v10

    const-string/jumbo v3, "mnc"

    aput-object v3, v2, v4

    const-string/jumbo v3, "profile_name = ? AND profile_creator = ? "

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1661
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_6d

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 1662
    const/4 v9, 0x1

    .line 1665
    :cond_6d
    if-eqz v8, :cond_72

    .line 1666
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1669
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_72
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isProfileValidForACreator - exit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    return v9
.end method

.method protected isProfileValidForAnAdmin(Ljava/lang/String;I)Z
    .registers 14
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "adminUid"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v10, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1099
    const/4 v9, 0x0

    .line 1100
    .local v9, "returnValue":Z
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isProfileValidForAnAdmin - enter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eb_profiles_table"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "apn"

    aput-object v3, v2, v6

    const-string/jumbo v3, "mcc"

    aput-object v3, v2, v10

    const-string/jumbo v3, "mnc"

    aput-object v3, v2, v4

    const-string/jumbo v3, "profile_name = ? AND adminUid = ? "

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1109
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_6b

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 1110
    const/4 v9, 0x1

    .line 1113
    :cond_6b
    if-eqz v8, :cond_70

    .line 1114
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1116
    :cond_70
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isProfileValidForAnAdmin - exit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    return v9
.end method

.method protected isRoamingAllowed(Ljava/lang/String;)Z
    .registers 14
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 816
    const-string v0, "EnterpriseBillingPolicyStorage"

    const-string/jumbo v1, "isRoamingAllowed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const/4 v9, 0x0

    .line 818
    .local v9, "returnValue":Z
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eb_profile_settings_table"

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "allow_on_roaming"

    aput-object v3, v2, v11

    const-string/jumbo v3, "profile_name = ?"

    new-array v4, v10, [Ljava/lang/String;

    aput-object p1, v4, v11

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 826
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_35

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 827
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v10, :cond_54

    move v9, v10

    .line 829
    :cond_35
    :goto_35
    if-eqz v8, :cond_3a

    .line 830
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 832
    :cond_3a
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isRoamingAllowed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    return v9

    :cond_54
    move v9, v11

    .line 827
    goto :goto_35
.end method

.method protected isSomeOtherProfileActive(Ljava/lang/String;)Z
    .registers 13
    .param p1, "ebProfileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 1783
    const/4 v9, 0x0

    .line 1785
    .local v9, "returnValue":Z
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSomeOtherProfileActive starting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eb_profile_settings_table"

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "profile_name"

    aput-object v3, v2, v10

    const-string v3, "activate = ?"

    new-array v4, v4, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v4, v10

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1797
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_4c

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1800
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 1801
    const/4 v9, 0x1

    .line 1804
    :cond_4c
    if-eqz v8, :cond_51

    .line 1806
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1808
    :cond_51
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSomeOtherProfileActive ending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    return v9
.end method

.method protected isWifiFallbackAllowed(Ljava/lang/String;)Z
    .registers 14
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 839
    const-string v0, "EnterpriseBillingPolicyStorage"

    const-string/jumbo v1, "isWifiFallbackAllowed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    const/4 v9, 0x0

    .line 841
    .local v9, "returnValue":Z
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eb_profile_settings_table"

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "allow_on_wifi"

    aput-object v3, v2, v11

    const-string/jumbo v3, "profile_name = ?"

    new-array v4, v10, [Ljava/lang/String;

    aput-object p1, v4, v11

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 849
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_35

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 850
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v10, :cond_54

    move v9, v10

    .line 852
    :cond_35
    :goto_35
    if-eqz v8, :cond_3a

    .line 853
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 855
    :cond_3a
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isWifiFallbackAllowed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    return v9

    :cond_54
    move v9, v11

    .line 850
    goto :goto_35
.end method

.method protected isuIdsameasCreatorId(I)Z
    .registers 13
    .param p1, "creatorId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 1676
    const/4 v9, 0x0

    .line 1677
    .local v9, "returnValue":Z
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isuIdsameasCreatorId - enter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    invoke-direct {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "eb_profiles_table"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "apn"

    aput-object v3, v2, v10

    const-string/jumbo v3, "mcc"

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string/jumbo v4, "mnc"

    aput-object v4, v2, v3

    const-string/jumbo v3, "profile_creator = ? "

    new-array v4, v6, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1686
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_5f

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1687
    const/4 v9, 0x1

    .line 1690
    :cond_5f
    if-eqz v8, :cond_64

    .line 1691
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1693
    :cond_64
    const-string v0, "EnterpriseBillingPolicyStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isuIdsameasCreatorId - exit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    return v9
.end method

.method protected removeApplicationFromProfile(Ljava/lang/String;I)I
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 324
    const/4 v1, 0x0

    .line 325
    .local v1, "returnVal":I
    const-string v2, "EnterpriseBillingPolicyStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeApplicationFromProfile PackageName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : containerId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {p0, p1, p2}, getProfileForApplication(Ljava/lang/String;I)Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;

    move-result-object v0

    .line 331
    .local v0, "profile":Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    const-string v2, "EnterpriseBillingPolicyStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeApplicationFromProfile = profile ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-direct {p0}, getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "eb_mapping_table"

    const-string/jumbo v4, "package = ? AND container_id = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 339
    const-string v2, "EnterpriseBillingPolicyStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Record successfully added inside Active Profile Table db with returnVal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return v1
.end method

.method protected removeContainerFromProfile(I)I
    .registers 11
    .param p1, "containerId"    # I

    .prologue
    .line 293
    const/4 v1, 0x0

    .line 294
    .local v1, "returnVal":I
    invoke-virtual {p0, p1}, getProfileForContainer(I)Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;

    move-result-object v0

    .line 295
    .local v0, "profile":Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    const-string v2, "EnterpriseBillingPolicyStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeContainerFromProfile = profile ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : conatinerId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-direct {p0}, getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "eb_mapping_table"

    const-string v4, "container_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 297
    const-string v2, "EnterpriseBillingPolicyStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Record successfully removed from  Profile Mapping Table db with returnVal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return v1
.end method

.method public removeFromUIDExceptionList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1537
    const-string v2, "EnterpriseBillingPolicyStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeFromUIDExceptionList is starting inside EnterpriseBillingPolicyStorage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    const/4 v1, 0x0

    .line 1544
    .local v1, "returnValue":I
    invoke-direct {p0}, getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "uid_exception_list"

    const-string v4, "app_uid = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1549
    .local v0, "dbRet1":I
    const-string v2, "EnterpriseBillingPolicyStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no of records deleted = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    if-nez v0, :cond_75

    .line 1557
    const-string v2, "EnterpriseBillingPolicyStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delete Record Failed inside removeFromUIDExceptionList :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    const/4 v1, -0x1

    .line 1569
    :cond_75
    const-string v2, "EnterpriseBillingPolicyStorage"

    const-string v3, "Record successfully deleted inside UID Exception List Table db"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    const-string v2, "EnterpriseBillingPolicyStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeFromUIDExceptionList is exiting with returnValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    return v1
.end method

.method protected removeProfile(Ljava/lang/String;)I
    .registers 8
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 502
    const-string v1, "EnterpriseBillingPolicyStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeProfile - start - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/4 v0, 0x0

    .line 505
    .local v0, "numberOfRecords":I
    invoke-virtual {p0, p1}, hasMappings(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 506
    const-string v1, "EnterpriseBillingPolicyStorage"

    const-string v2, "Profile is no more used; Can delete"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-direct {p0}, getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "eb_profiles_table"

    const-string/jumbo v3, "profile_name =?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 510
    invoke-direct {p0, p1}, checkForProfileAndDeleteSettings(Ljava/lang/String;)V

    .line 512
    :cond_3e
    const-string v1, "EnterpriseBillingPolicyStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeProfile - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    return v0
.end method

.method protected removeProfileMapping(Ljava/lang/String;)I
    .registers 8
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 360
    const-string v1, "EnterpriseBillingPolicyStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeProfileMapping - start - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, "returnVal":I
    invoke-direct {p0}, getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "eb_mapping_table"

    const-string/jumbo v3, "profile_name = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 363
    const-string v1, "EnterpriseBillingPolicyStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed all records mapped to profile \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' by updating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " records"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-string v1, "EnterpriseBillingPolicyStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeProfileMapping - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return v0
.end method

.method protected removeUidByTAG(Ljava/lang/String;)Z
    .registers 9
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1812
    const-string v3, "EnterpriseBillingPolicyStorage"

    const-string/jumbo v4, "removeUidByTAG Start"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    const-string v3, "EnterpriseBillingPolicyStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeUidByTAG TAG NAME ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    invoke-direct {p0}, getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string/jumbo v4, "uid_exception_list"

    const-string v5, "caller_id = ?"

    new-array v6, v1, [Ljava/lang/String;

    aput-object p1, v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1817
    .local v0, "dbRet1":I
    if-nez v0, :cond_4e

    .line 1818
    const-string v3, "EnterpriseBillingPolicyStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delete Record Failed inside removeUidByTag :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    :cond_4e
    const-string v3, "EnterpriseBillingPolicyStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeUidByTAG End "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    if-lez v0, :cond_6a

    :goto_69
    return v1

    :cond_6a
    move v1, v2

    goto :goto_69
.end method

.method public removeVpnProfile(Ljava/lang/String;)Z
    .registers 9
    .param p1, "vpnProfileName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1013
    const-string v3, "EnterpriseBillingPolicyStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeVpnProfile in ebpHelper - start - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    invoke-direct {p0}, getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string/jumbo v4, "eb_vpn_profiles_table"

    const-string/jumbo v5, "vpn_profile_name=?"

    new-array v6, v1, [Ljava/lang/String;

    aput-object p1, v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1018
    .local v0, "removedRows":I
    const-string v3, "EnterpriseBillingPolicyStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeVpnProfile in ebpHelper - end - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    if-lez v0, :cond_49

    :goto_48
    return v1

    :cond_49
    move v1, v2

    goto :goto_48
.end method

.method protected setDefaultApnType(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "defaultApnType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1299
    const/4 v0, 0x0

    .line 1300
    .local v0, "returnVale":Z
    const-string v5, "EnterpriseBillingPolicyStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setDefaultApnType - start - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1303
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "default_type"

    invoke-virtual {v2, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    invoke-direct {p0}, getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string/jumbo v6, "eapn_mapping_table"

    const-string/jumbo v7, "profile_name= ? "

    new-array v8, v3, [Ljava/lang/String;

    aput-object p1, v8, v4

    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1310
    .local v1, "updatedRows":I
    if-lez v1, :cond_60

    move v0, v3

    .line 1312
    :goto_46
    const-string v3, "EnterpriseBillingPolicyStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDefaultApnType - end - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    return v0

    :cond_60
    move v0, v4

    .line 1310
    goto :goto_46
.end method

.method protected turnOnProfile(Ljava/lang/String;Z)I
    .registers 10
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "turnOn"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 415
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 416
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "turn_on"

    if-eqz p2, :cond_27

    move v2, v3

    :goto_d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 420
    invoke-direct {p0}, getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v5, "eb_profile_settings_table"

    const-string/jumbo v6, "profile_name = ?"

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-virtual {v2, v5, v1, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 425
    .local v0, "returnValue":I
    return v0

    .end local v0    # "returnValue":I
    :cond_27
    move v2, v4

    .line 416
    goto :goto_d
.end method

.method protected updateProfile(Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;I)I
    .registers 7
    .param p1, "profile"    # Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    .param p2, "adminUid"    # I

    .prologue
    .line 519
    const-string v1, "EnterpriseBillingPolicyStorage"

    const-string v2, "Updating apn inside EnterpriseBillingPolicyStorageHelper"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/4 v0, 0x0

    .line 522
    .local v0, "returnVal":I
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, getProfile(Ljava/lang/String;)Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 523
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, removeProfile(Ljava/lang/String;)I

    .line 524
    invoke-virtual {p0, p1, p2, p2}, addProfile(Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;II)I

    move-result v0

    .line 526
    :cond_1d
    const-string v1, "EnterpriseBillingPolicyStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Record successfully updated inside Profile List Table db with returnVal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    return v0
.end method
