.class public Lcom/android/server/enterprise/general/MiscPolicy;
.super Landroid/app/enterprise/IMiscPolicy$Stub;
.source "MiscPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/general/MiscPolicy$ClearClipboardData;,
        Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;,
        Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;
    }
.end annotation


# static fields
.field private static final CHROME_BOOKMARKS_URI:Landroid/net/Uri;

.field private static final FONT_NOTSUPPORT_PACKAGE:Ljava/lang/String; = "com.monotype.android.font.droidserifitalic"

.field private static final FONT_PACKAGE:Ljava/lang/String; = "com.monotype.android.font."

.field private static final SBROWSER_BOOKMARKS_URI:Landroid/net/Uri;

.field private static final SBROWSER_PROJECTION:[Ljava/lang/String;

.field private static final SBROWSER_PROJECTION_ID_INDEX:I = 0x0

.field private static final SETTINGS_APP_PKGNAME:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "MiscPolicy"


# instance fields
.field private final ACTION_USER_ADDED:Ljava/lang/String;

.field private final MAX_PORT_NUMBER:I

.field private final MIN_PORT_NUMBER:I

.field private mBootReceiver:Landroid/content/BroadcastReceiver;

.field private mCon:Landroid/net/IConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mFontSizes:[F

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private mSIMInfo:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

.field private mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 196
    const-string v0, "content://com.sec.android.app.sbrowser.operatorbookmarks/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, SBROWSER_BOOKMARKS_URI:Landroid/net/Uri;

    .line 198
    const-string v0, "content://com.android.chrome.browser/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, CHROME_BOOKMARKS_URI:Landroid/net/Uri;

    .line 200
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "favicon"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "editable"

    aput-object v2, v0, v1

    sput-object v0, SBROWSER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 211
    invoke-direct {p0}, Landroid/app/enterprise/IMiscPolicy$Stub;-><init>()V

    .line 180
    iput-object v1, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 185
    iput-object v1, p0, mFontSizes:[F

    .line 188
    const/4 v1, 0x0

    iput v1, p0, MIN_PORT_NUMBER:I

    .line 189
    const v1, 0xffff

    iput v1, p0, MAX_PORT_NUMBER:I

    .line 191
    const-string v1, "android.intent.action.USER_ADDED"

    iput-object v1, p0, ACTION_USER_ADDED:Ljava/lang/String;

    .line 2104
    new-instance v1, Lcom/android/server/enterprise/general/MiscPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/general/MiscPolicy$1;-><init>(Lcom/android/server/enterprise/general/MiscPolicy;)V

    iput-object v1, p0, mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 213
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 214
    new-instance v1, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;-><init>(Lcom/android/server/enterprise/general/MiscPolicy;Landroid/content/Context;)V

    iput-object v1, p0, mSIMInfo:Lcom/android/server/enterprise/general/MiscPolicy$SIMCardUpdateMonitor;

    .line 215
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 216
    .local v0, "filterBroad":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 219
    return-void
.end method

.method private GetSystemFontChanger()Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;
    .registers 3

    .prologue
    .line 1298
    iget-object v0, p0, mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    if-nez v0, :cond_c

    .line 1299
    new-instance v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;-><init>(Lcom/android/server/enterprise/general/MiscPolicy;Lcom/android/server/enterprise/general/MiscPolicy$1;)V

    iput-object v0, p0, mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    .line 1301
    :cond_c
    iget-object v0, p0, mSystemFontChanger:Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/general/MiscPolicy;

    .prologue
    .line 171
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/net/IConnectivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/general/MiscPolicy;

    .prologue
    .line 171
    invoke-direct {p0}, getConnectivityManagerService()Landroid/net/IConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/general/MiscPolicy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/general/MiscPolicy;

    .prologue
    .line 171
    invoke-direct {p0}, setGlobalProxyOnBoot()V

    return-void
.end method

.method private addBookmark(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 955
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 956
    .local v4, "userId":I
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string v8, "android"

    invoke-static {v7, v8, v5, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v2

    .line 958
    .local v2, "context":Landroid/content/Context;
    if-nez v2, :cond_18

    .line 959
    const-string v6, "MiscPolicy"

    const-string v7, "addBookmark() - Could not create context for current user!"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    :cond_17
    :goto_17
    return v5

    .line 963
    :cond_18
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 964
    .local v3, "cr":Landroid/content/ContentResolver;
    invoke-direct {p0, v3, p2, p3}, addBookmarkToChrome(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 965
    .local v0, "bookmarkAddedtoChrome":Z
    invoke-direct {p0, v3, p2, p3}, addBookmarkToSBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 968
    .local v1, "bookmarkAddedtoSBrowser":Z
    if-nez v1, :cond_30

    .line 970
    invoke-direct {p0, v3, p2, p3, p4}, addBookmarkToAndroidBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v7

    if-nez v7, :cond_2e

    if-eqz v0, :cond_17

    :cond_2e
    move v5, v6

    goto :goto_17

    :cond_30
    move v5, v6

    .line 973
    goto :goto_17
.end method

.method private addBookmarkToAndroidBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 23
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    .line 874
    const/4 v10, 0x0

    .line 875
    .local v10, "result":Z
    sget-object v2, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    .line 876
    .local v2, "browserUri":Landroid/net/Uri;
    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 877
    .local v4, "creationTime":J
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 878
    .local v7, "cv":Landroid/content/ContentValues;
    const/4 v6, 0x0

    .line 879
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 883
    .local v12, "token":J
    :try_start_16
    sget-object v15, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v2, v15}, getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 884
    if-nez v6, :cond_33

    .line 885
    const-string v15, "MiscPolicy"

    const-string v16, "addBookmarkToAndroidBrowser() - No provider found!!!"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_29} :catch_f7
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_29} :catch_110
    .catchall {:try_start_16 .. :try_end_29} :catchall_136

    .line 886
    const/4 v15, 0x0

    .line 942
    if-eqz v6, :cond_2f

    .line 943
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 944
    :cond_2f
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 947
    :goto_32
    return v15

    .line 888
    :cond_33
    :try_start_33
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 890
    .local v3, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_38
    if-ge v9, v3, :cond_4a

    .line 893
    invoke-interface {v6, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 894
    const/4 v15, 0x5

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e4

    .line 903
    :cond_4a
    const-string/jumbo v15, "title"

    move-object/from16 v0, p3

    invoke-virtual {v7, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    const-string/jumbo v15, "url"

    move-object/from16 v0, p2

    invoke-virtual {v7, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    const-string/jumbo v15, "created"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 906
    const-string v15, "bookmark"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 907
    const-string/jumbo v15, "date"

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 908
    sget-object v15, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v15, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_95

    .line 909
    const-string/jumbo v15, "thumbnail"

    invoke-static/range {p4 .. p4}, bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 911
    :cond_95
    const/4 v14, 0x0

    .line 912
    .local v14, "visits":I
    if-lez v3, :cond_9d

    .line 918
    const/4 v15, 0x2

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 924
    :cond_9d
    if-nez v3, :cond_e8

    .line 925
    const-string/jumbo v15, "visits"

    add-int/lit8 v16, v14, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 929
    :goto_ad
    const-string v15, "MiscPolicy"

    const-string v16, "addBookmarkToAndroidBrowser() - Inserting bookmark into database"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 931
    .local v11, "uri":Landroid/net/Uri;
    if-eqz v11, :cond_108

    .line 932
    const-string v15, "MiscPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "addBookmarkToAndroidBrowser() - uri: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_33 .. :try_end_d8} :catch_f7
    .catch Ljava/lang/IllegalStateException; {:try_start_33 .. :try_end_d8} :catch_110
    .catchall {:try_start_33 .. :try_end_d8} :catchall_136

    .line 933
    const/4 v10, 0x1

    .line 942
    :goto_d9
    if-eqz v6, :cond_de

    .line 943
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 944
    :cond_de
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v3    # "count":I
    .end local v9    # "i":I
    .end local v11    # "uri":Landroid/net/Uri;
    .end local v14    # "visits":I
    :goto_e1
    move v15, v10

    .line 947
    goto/16 :goto_32

    .line 890
    .restart local v3    # "count":I
    .restart local v9    # "i":I
    :cond_e4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_38

    .line 927
    .restart local v14    # "visits":I
    :cond_e8
    :try_start_e8
    const-string/jumbo v15, "visits"

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_f6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e8 .. :try_end_f6} :catch_f7
    .catch Ljava/lang/IllegalStateException; {:try_start_e8 .. :try_end_f6} :catch_110
    .catchall {:try_start_e8 .. :try_end_f6} :catchall_136

    goto :goto_ad

    .line 937
    .end local v3    # "count":I
    .end local v9    # "i":I
    .end local v14    # "visits":I
    :catch_f7
    move-exception v8

    .line 938
    .local v8, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_f8
    const-string v15, "MiscPolicy"

    const-string v16, "Android provider error - unknown uri"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ff
    .catchall {:try_start_f8 .. :try_end_ff} :catchall_136

    .line 942
    if-eqz v6, :cond_104

    .line 943
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 944
    :cond_104
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_e1

    .line 935
    .end local v8    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "count":I
    .restart local v9    # "i":I
    .restart local v11    # "uri":Landroid/net/Uri;
    .restart local v14    # "visits":I
    :cond_108
    :try_start_108
    const-string v15, "MiscPolicy"

    const-string v16, "addBookmarkToAndroidBrowser() - uri is null!"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_108 .. :try_end_10f} :catch_f7
    .catch Ljava/lang/IllegalStateException; {:try_start_108 .. :try_end_10f} :catch_110
    .catchall {:try_start_108 .. :try_end_10f} :catchall_136

    goto :goto_d9

    .line 939
    .end local v3    # "count":I
    .end local v9    # "i":I
    .end local v11    # "uri":Landroid/net/Uri;
    .end local v14    # "visits":I
    :catch_110
    move-exception v8

    .line 940
    .local v8, "ex":Ljava/lang/IllegalStateException;
    :try_start_111
    const-string v15, "MiscPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Android provider error: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12d
    .catchall {:try_start_111 .. :try_end_12d} :catchall_136

    .line 942
    if-eqz v6, :cond_132

    .line 943
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 944
    :cond_132
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_e1

    .line 942
    .end local v8    # "ex":Ljava/lang/IllegalStateException;
    :catchall_136
    move-exception v15

    if-eqz v6, :cond_13c

    .line 943
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 944
    :cond_13c
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v15
.end method

.method private addBookmarkToChrome(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 849
    const/4 v2, 0x0

    .line 850
    .local v2, "result":Z
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 852
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 854
    .local v4, "token":J
    :try_start_a
    const-string/jumbo v6, "title"

    invoke-virtual {v0, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const-string/jumbo v6, "url"

    invoke-virtual {v0, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    const-string v6, "bookmark"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 857
    sget-object v6, CHROME_BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {p1, v6, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 858
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_49

    .line 859
    const-string v6, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addBookmarkToChrome() - uri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_44} :catch_51
    .catchall {:try_start_a .. :try_end_44} :catchall_5d

    .line 860
    const/4 v2, 0x1

    .line 867
    :goto_45
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 870
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_48
    return v2

    .line 862
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_49
    :try_start_49
    const-string v6, "MiscPolicy"

    const-string v7, "addBookmarkToChrome() - uri is null!"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/IllegalArgumentException; {:try_start_49 .. :try_end_50} :catch_51
    .catchall {:try_start_49 .. :try_end_50} :catchall_5d

    goto :goto_45

    .line 864
    .end local v3    # "uri":Landroid/net/Uri;
    :catch_51
    move-exception v1

    .line 865
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_52
    const-string v6, "MiscPolicy"

    const-string v7, "Chrome provider error - unknown uri"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_5d

    .line 867
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_48

    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :catchall_5d
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method private addBookmarkToSBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 824
    const/4 v2, 0x0

    .line 825
    .local v2, "result":Z
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 827
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 829
    .local v4, "token":J
    :try_start_a
    const-string/jumbo v6, "title"

    invoke-virtual {v0, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const-string/jumbo v6, "url"

    invoke-virtual {v0, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const-string/jumbo v6, "editable"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 832
    sget-object v6, SBROWSER_BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {p1, v6, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 833
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_4a

    .line 834
    const-string v6, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addBookmarkToSBrowser() - uri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_45} :catch_52
    .catchall {:try_start_a .. :try_end_45} :catchall_5e

    .line 835
    const/4 v2, 0x1

    .line 842
    :goto_46
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 845
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_49
    return v2

    .line 837
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_4a
    :try_start_4a
    const-string v6, "MiscPolicy"

    const-string v7, "addBookmarkToSBrowser() - uri is null!"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4a .. :try_end_51} :catch_52
    .catchall {:try_start_4a .. :try_end_51} :catchall_5e

    goto :goto_46

    .line 839
    .end local v3    # "uri":Landroid/net/Uri;
    :catch_52
    move-exception v1

    .line 840
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_53
    const-string v6, "MiscPolicy"

    const-string v7, "Sbrowser provider error - unknown uri"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_5e

    .line 842
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_49

    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :catchall_5e
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method private static final addOrUrlEquals(Ljava/lang/StringBuilder;)V
    .registers 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 778
    const-string v0, " OR url = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    return-void
.end method

.method private static bitmapToBytes(Landroid/graphics/Bitmap;)[B
    .registers 4
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 981
    if-nez p0, :cond_4

    .line 982
    const/4 v1, 0x0

    .line 987
    :goto_3
    return-object v1

    .line 985
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 986
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 987
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_3
.end method

.method private declared-synchronized clearGlobalProxyEnable(Landroid/app/enterprise/ContextInfo;)I
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v12, 0x0

    .line 2401
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "RESTRICTION"

    const-string/jumbo v4, "globalProxy"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z
    :try_end_10
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_2 .. :try_end_10} :catch_16
    .catchall {:try_start_2 .. :try_end_10} :catchall_73

    move-result v0

    if-nez v0, :cond_20

    move v0, v12

    .line 2432
    :goto_14
    monitor-exit p0

    return v0

    .line 2405
    :catch_16
    move-exception v6

    .line 2406
    .local v6, "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    :try_start_17
    const-string v0, "MiscPolicy"

    const-string v1, "clearGlobalProxyEnable.SettingNotFoundException"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v12

    .line 2407
    goto :goto_14

    .line 2410
    .end local v6    # "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    :cond_20
    invoke-direct {p0}, getConnectivityManagerService()Landroid/net/IConnectivityManager;
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_73

    move-result-object v0

    if-eqz v0, :cond_71

    .line 2413
    :try_start_26
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v3, "RESTRICTION"

    const-string/jumbo v4, "globalProxy"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z

    .line 2417
    new-instance v7, Landroid/net/ProxyInfo;

    const-string v0, ""

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v7, v0, v1, v2}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 2418
    .local v7, "emptyProxy":Landroid/net/ProxyInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2419
    .local v10, "token":J
    iget-object v0, p0, mCon:Landroid/net/IConnectivityManager;

    invoke-interface {v0, v7}, Landroid/net/IConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    .line 2420
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2421
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v9

    .line 2422
    .local v9, "userId":I
    if-nez v9, :cond_67

    .line 2423
    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2424
    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    const-string v0, "MiscPolicy"

    const-string v1, "clearGlobalProxyEnable"

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2425
    const-string v0, "MiscPolicy"

    const-string v1, "clearGlobalProxyEnable calling gearPolicyManager  "

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_67} :catch_69
    .catchall {:try_start_26 .. :try_end_67} :catchall_73

    .line 2427
    .end local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_67
    const/4 v0, 0x1

    goto :goto_14

    .line 2428
    .end local v7    # "emptyProxy":Landroid/net/ProxyInfo;
    .end local v9    # "userId":I
    .end local v10    # "token":J
    :catch_69
    move-exception v6

    .line 2429
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_6a
    const-string v0, "MiscPolicy"

    const-string v1, "Clear Global Proxy - RemoteException"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_73

    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_71
    move v0, v12

    .line 2432
    goto :goto_14

    .line 2401
    :catchall_73
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private copyFileFromParcel(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 294
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/system/enterprise/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "candidatePath":Ljava/lang/String;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 300
    .local v0, "buffer":[B
    const/4 v3, 0x0

    .line 301
    .local v3, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 303
    .local v5, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_22
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2b} :catch_ac
    .catchall {:try_start_22 .. :try_end_2b} :catchall_85

    .line 304
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .local v4, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_2b
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_30} :catch_ae
    .catchall {:try_start_2b .. :try_end_30} :catchall_a5

    .line 305
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v6, "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_30
    :try_start_30
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    .local v7, "length":I
    if-lez v7, :cond_4d

    .line 306
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3a} :catch_3b
    .catchall {:try_start_30 .. :try_end_3a} :catchall_a8

    goto :goto_30

    .line 310
    .end local v7    # "length":I
    :catch_3b
    move-exception v2

    move-object v5, v6

    .end local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 311
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .local v2, "ex":Ljava/lang/Exception;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_3e
    :try_start_3e
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_85

    .line 312
    const/4 v1, 0x0

    .line 314
    .end local v1    # "candidatePath":Ljava/lang/String;
    if-eqz v3, :cond_47

    .line 316
    :try_start_44
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_71

    .line 321
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_47
    :goto_47
    if-eqz v5, :cond_4c

    .line 323
    :try_start_49
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_7b

    .line 329
    :cond_4c
    :goto_4c
    return-object v1

    .line 309
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "candidatePath":Ljava/lang/String;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "length":I
    :cond_4d
    :try_start_4d
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_3b
    .catchall {:try_start_4d .. :try_end_50} :catchall_a8

    .line 314
    if-eqz v4, :cond_55

    .line 316
    :try_start_52
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_5d

    .line 321
    :cond_55
    :goto_55
    if-eqz v6, :cond_5a

    .line 323
    :try_start_57
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_67

    :cond_5a
    :goto_5a
    move-object v5, v6

    .end local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 329
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_4c

    .line 317
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_5d
    move-exception v2

    .line 318
    .local v2, "ex":Ljava/io/IOException;
    const-string v8, "MiscPolicy"

    const-string/jumbo v9, "failed to close inputstream"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    .line 324
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_67
    move-exception v2

    .line 325
    .restart local v2    # "ex":Ljava/io/IOException;
    const-string v8, "MiscPolicy"

    const-string/jumbo v9, "failed to close outputstream"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    .line 317
    .end local v1    # "candidatePath":Ljava/lang/String;
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v7    # "length":I
    .local v2, "ex":Ljava/lang/Exception;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_71
    move-exception v2

    .line 318
    .local v2, "ex":Ljava/io/IOException;
    const-string v8, "MiscPolicy"

    const-string/jumbo v9, "failed to close inputstream"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    .line 324
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_7b
    move-exception v2

    .line 325
    .restart local v2    # "ex":Ljava/io/IOException;
    const-string v8, "MiscPolicy"

    const-string/jumbo v9, "failed to close outputstream"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 314
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v1    # "candidatePath":Ljava/lang/String;
    :catchall_85
    move-exception v8

    :goto_86
    if-eqz v3, :cond_8b

    .line 316
    :try_start_88
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_91

    .line 321
    :cond_8b
    :goto_8b
    if-eqz v5, :cond_90

    .line 323
    :try_start_8d
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_9b

    .line 326
    :cond_90
    :goto_90
    throw v8

    .line 317
    :catch_91
    move-exception v2

    .line 318
    .restart local v2    # "ex":Ljava/io/IOException;
    const-string v9, "MiscPolicy"

    const-string/jumbo v10, "failed to close inputstream"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8b

    .line 324
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_9b
    move-exception v2

    .line 325
    .restart local v2    # "ex":Ljava/io/IOException;
    const-string v9, "MiscPolicy"

    const-string/jumbo v10, "failed to close outputstream"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_90

    .line 314
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_a5
    move-exception v8

    move-object v3, v4

    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_86

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_a8
    move-exception v8

    move-object v5, v6

    .end local v6    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_86

    .line 310
    :catch_ac
    move-exception v2

    goto :goto_3e

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_ae
    move-exception v2

    move-object v3, v4

    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_3e
.end method

.method private enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 251
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_FIREWALL"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 253
    return-object p1
.end method

.method private enforceOwnerOnlyAndFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 262
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_FIREWALL"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndHwPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 246
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_HW_CONTROL"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 257
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndWriteSettingsPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 241
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 236
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private floatToIndex(F)I
    .registers 9
    .param p1, "val"    # F

    .prologue
    .line 1949
    const/4 v2, -0x1

    .line 1950
    .local v2, "ret":I
    const/4 v3, 0x0

    .line 1951
    .local v3, "thisVal":F
    iget-object v4, p0, mFontSizes:[F

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 1953
    .local v1, "lastVal":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_8
    iget-object v4, p0, mFontSizes:[F

    array-length v4, v4

    if-ge v0, v4, :cond_22

    .line 1954
    iget-object v4, p0, mFontSizes:[F

    aget v3, v4, v0

    .line 1955
    sub-float v4, v3, v1

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v4, v1

    cmpg-float v4, p1, v4

    if-gez v4, :cond_1e

    .line 1956
    add-int/lit8 v4, v0, -0x1

    .line 1962
    :goto_1d
    return v4

    .line 1958
    :cond_1e
    move v1, v3

    .line 1953
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1960
    :cond_22
    iget-object v4, p0, mFontSizes:[F

    array-length v4, v4

    add-int/lit8 v2, v4, -0x1

    .line 1961
    const-string v4, "MiscPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "floatToIndex(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    .line 1962
    goto :goto_1d
.end method

.method private getConnectivityManagerService()Landroid/net/IConnectivityManager;
    .registers 3

    .prologue
    .line 2094
    const-string v1, "connectivity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2095
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_12

    .line 2096
    iget-object v1, p0, mCon:Landroid/net/IConnectivityManager;

    if-nez v1, :cond_12

    .line 2097
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iput-object v1, p0, mCon:Landroid/net/IConnectivityManager;

    .line 2100
    :cond_12
    iget-object v1, p0, mCon:Landroid/net/IConnectivityManager;

    return-object v1
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 224
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 225
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 228
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private declared-synchronized getGlobalProxy(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2341
    monitor-enter p0

    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2343
    .local v7, "listString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, getConnectivityManagerService()Landroid/net/IConnectivityManager;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_99

    move-result-object v11

    if-eqz v11, :cond_97

    .line 2345
    :try_start_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2346
    .local v12, "token":J
    iget-object v11, p0, mCon:Landroid/net/IConnectivityManager;

    invoke-interface {v11}, Landroid/net/IConnectivityManager;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v9

    .line 2347
    .local v9, "proxy":Landroid/net/ProxyInfo;
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2349
    if-eqz v9, :cond_31

    invoke-virtual {v9}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_31

    invoke-virtual {v9}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v14, ""

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_38

    .line 2351
    :cond_31
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "listString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_36} :catch_8e
    .catchall {:try_start_c .. :try_end_36} :catchall_99

    .line 2375
    .end local v9    # "proxy":Landroid/net/ProxyInfo;
    .end local v12    # "token":J
    :cond_36
    :goto_36
    monitor-exit p0

    return-object v7

    .line 2354
    .restart local v7    # "listString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "proxy":Landroid/net/ProxyInfo;
    .restart local v12    # "token":J
    :cond_38
    :try_start_38
    new-instance v10, Ljava/lang/Integer;

    invoke-virtual {v9}, Landroid/net/ProxyInfo;->getPort()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    .line 2355
    .local v10, "stringPort":Ljava/lang/Integer;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ":"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2358
    .local v4, "host":Ljava/lang/String;
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2360
    invoke-virtual {v9}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v2

    .line 2361
    .local v2, "exclusion":Ljava/lang/String;
    const-string v11, ","

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2363
    .local v8, "parts":[Ljava/lang/String;
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_7c
    if-ge v5, v6, :cond_86

    aget-object v3, v0, v5

    .line 2364
    .local v3, "exclusionParts":Ljava/lang/String;
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2363
    add-int/lit8 v5, v5, 0x1

    goto :goto_7c

    .line 2366
    .end local v3    # "exclusionParts":Ljava/lang/String;
    :cond_86
    if-nez v4, :cond_36

    .line 2369
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "listString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_8d} :catch_8e
    .catchall {:try_start_38 .. :try_end_8d} :catchall_99

    goto :goto_36

    .line 2371
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "exclusion":Ljava/lang/String;
    .end local v4    # "host":Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v8    # "parts":[Ljava/lang/String;
    .end local v9    # "proxy":Landroid/net/ProxyInfo;
    .end local v10    # "stringPort":Ljava/lang/Integer;
    .end local v12    # "token":J
    :catch_8e
    move-exception v1

    .line 2372
    .local v1, "e":Ljava/lang/Exception;
    :try_start_8f
    const-string v11, "MiscPolicy"

    const-string/jumbo v14, "getGlobalProxy.Exception"

    invoke-static {v11, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_97
    .catchall {:try_start_8f .. :try_end_97} :catchall_99

    .line 2375
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_97
    const/4 v7, 0x0

    goto :goto_36

    .line 2341
    :catchall_99
    move-exception v11

    monitor-exit p0

    throw v11
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .registers 2

    .prologue
    .line 1118
    iget-object v0, p0, mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_11

    .line 1119
    const-string/jumbo v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 1122
    :cond_11
    iget-object v0, p0, mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private static final getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 791
    const/4 v7, 0x0

    .line 792
    .local v7, "secure":Z
    move-object v6, p1

    .line 793
    .local v6, "compareString":Ljava/lang/String;
    const-string/jumbo v0, "http://"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 794
    const/4 v0, 0x7

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 799
    :cond_11
    :goto_11
    const-string/jumbo v0, "www."

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 800
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 802
    :cond_1f
    const/4 v8, 0x0

    .line 803
    .local v8, "whereClause":Ljava/lang/StringBuilder;
    if-eqz v7, :cond_79

    .line 804
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8    # "whereClause":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "url = "

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 805
    .restart local v8    # "whereClause":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 806
    invoke-static {v8}, addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https://www."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 819
    :goto_5b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 795
    .end local v8    # "whereClause":Ljava/lang/StringBuilder;
    :cond_68
    const-string/jumbo v0, "https://"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 796
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 797
    const/4 v7, 0x1

    goto :goto_11

    .line 809
    .restart local v8    # "whereClause":Ljava/lang/StringBuilder;
    :cond_79
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8    # "whereClause":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "url = "

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 810
    .restart local v8    # "whereClause":Ljava/lang/StringBuilder;
    invoke-static {v8, v6}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 811
    invoke-static {v8}, addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "www."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 813
    .local v9, "wwwString":Ljava/lang/String;
    invoke-static {v8, v9}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 814
    invoke-static {v8}, addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 816
    invoke-static {v8}, addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_5b
.end method

.method private isAdminLockScreenStringSet(I)I
    .registers 9
    .param p1, "userId"    # I

    .prologue
    const/4 v6, 0x1

    .line 1172
    const/4 v4, 0x2

    :try_start_2
    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "adminUid"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "lockscreenstring"

    aput-object v5, v0, v4

    .line 1176
    .local v0, "columns":[Ljava/lang/String;
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "MISC"

    invoke-virtual {v4, v5, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 1179
    .local v2, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 1180
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v4, "lockscreenstring"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_1b

    .line 1181
    const-string v4, "adminUid"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_41} :catch_43

    move-result v4

    .line 1186
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :goto_42
    return v4

    .line 1185
    :catch_43
    move-exception v4

    .line 1186
    :cond_44
    const/4 v4, -0x1

    goto :goto_42
.end method

.method private isRingToneEntryExist(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/net/Uri;)J
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "aRingToneAbsolutePath"    # Ljava/lang/String;
    .param p3, "aUri"    # Landroid/net/Uri;

    .prologue
    .line 436
    const-wide/16 v8, -0x1

    .line 438
    .local v8, "lRingToneEntryId":J
    const/4 v7, 0x0

    .line 440
    .local v7, "lCursor":Landroid/database/Cursor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 442
    .local v10, "token":J
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 444
    .local v3, "lWhereClause":Ljava/lang/String;
    const-string v0, "MiscPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isRingToneEntryExist : whereClause :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 449
    if-eqz v7, :cond_5e

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5e

    .line 450
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 451
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_5d} :catch_81
    .catchall {:try_start_7 .. :try_end_5d} :catchall_8f

    move-result-wide v8

    .line 457
    :cond_5e
    if-eqz v7, :cond_64

    .line 458
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 459
    const/4 v7, 0x0

    .line 461
    :cond_64
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 464
    .end local v3    # "lWhereClause":Ljava/lang/String;
    :goto_67
    const-string v0, "MiscPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isRingToneEntryExist : return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    return-wide v8

    .line 454
    :catch_81
    move-exception v6

    .line 455
    .local v6, "e":Ljava/lang/Exception;
    :try_start_82
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_8f

    .line 457
    if-eqz v7, :cond_8b

    .line 458
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 459
    const/4 v7, 0x0

    .line 461
    :cond_8b
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_67

    .line 457
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_8f
    move-exception v0

    if-eqz v7, :cond_96

    .line 458
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 459
    const/4 v7, 0x0

    .line 461
    :cond_96
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private readFile(Ljava/lang/String;)[B
    .registers 15
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 469
    const/4 v2, 0x0

    .line 470
    .local v2, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 471
    .local v4, "is":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 473
    .local v0, "bytes":[B
    :try_start_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_ae
    .catchall {:try_start_3 .. :try_end_8} :catchall_a9

    .line 474
    .end local v2    # "file":Ljava/io/File;
    .local v3, "file":Ljava/io/File;
    :try_start_8
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_b1
    .catchall {:try_start_8 .. :try_end_d} :catchall_ab

    .line 476
    .end local v4    # "is":Ljava/io/FileInputStream;
    .local v5, "is":Ljava/io/FileInputStream;
    if-eqz v5, :cond_87

    .line 478
    :try_start_f
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 479
    .local v6, "length":J
    const-wide/32 v10, 0x7fffffff

    cmp-long v10, v6, v10

    if-lez v10, :cond_4b

    .line 480
    new-instance v10, Ljava/io/IOException;

    const-string v11, "The file is too big"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_22} :catch_22
    .catchall {:try_start_f .. :try_end_22} :catchall_7d

    .line 498
    .end local v6    # "length":J
    :catch_22
    move-exception v1

    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    move-object v2, v3

    .line 499
    .end local v3    # "file":Ljava/io/File;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "file":Ljava/io/File;
    :goto_25
    :try_start_25
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_a9

    .line 504
    if-eqz v4, :cond_2e

    .line 505
    :try_start_2a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_96

    .line 506
    const/4 v4, 0x0

    .line 512
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2e
    :goto_2e
    if-eqz v0, :cond_a0

    .line 513
    const-string v10, "MiscPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "readFile returns "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :goto_4a
    return-object v0

    .line 484
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "length":J
    :cond_4b
    long-to-int v10, v6

    :try_start_4c
    new-array v0, v10, [B

    .line 486
    const/4 v9, 0x0

    .line 487
    .local v9, "offset":I
    const/4 v8, 0x0

    .line 489
    .local v8, "numRead":I
    :goto_50
    array-length v10, v0

    if-ge v9, v10, :cond_5d

    array-length v10, v0

    sub-int/2addr v10, v9

    invoke-virtual {v5, v0, v9, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    if-ltz v8, :cond_5d

    .line 490
    add-int/2addr v9, v8

    goto :goto_50

    .line 493
    :cond_5d
    array-length v10, v0

    if-ge v9, v10, :cond_87

    .line 494
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The file was not completely read: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_7d} :catch_22
    .catchall {:try_start_4c .. :try_end_7d} :catchall_7d

    .line 503
    .end local v6    # "length":J
    .end local v8    # "numRead":I
    .end local v9    # "offset":I
    :catchall_7d
    move-exception v10

    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    move-object v2, v3

    .line 504
    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :goto_80
    if-eqz v4, :cond_86

    .line 505
    :try_start_82
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_85} :catch_9b

    .line 506
    const/4 v4, 0x0

    .line 510
    :cond_86
    :goto_86
    throw v10

    .line 504
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :cond_87
    if-eqz v5, :cond_b5

    .line 505
    :try_start_89
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8c} :catch_8f

    .line 506
    const/4 v4, 0x0

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    :goto_8d
    move-object v2, v3

    .line 510
    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    goto :goto_2e

    .line 508
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catch_8f
    move-exception v1

    .line 509
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    move-object v2, v3

    .line 511
    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    goto :goto_2e

    .line 508
    :catch_96
    move-exception v1

    .line 509
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2e

    .line 508
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_9b
    move-exception v1

    .line 509
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_86

    .line 515
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_a0
    const-string v10, "MiscPolicy"

    const-string/jumbo v11, "readFile returns : null"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    .line 503
    :catchall_a9
    move-exception v10

    goto :goto_80

    .end local v2    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :catchall_ab
    move-exception v10

    move-object v2, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    goto :goto_80

    .line 498
    :catch_ae
    move-exception v1

    goto/16 :goto_25

    .end local v2    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :catch_b1
    move-exception v1

    move-object v2, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    goto/16 :goto_25

    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :cond_b5
    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    goto :goto_8d
.end method

.method private removeBookmarkFromAndroidBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 24
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 1039
    const/4 v10, 0x0

    .line 1040
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 1041
    .local v15, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1043
    .local v16, "token":J
    :try_start_6
    sget-object v5, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v6, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v7, "url = ? AND title = ?"

    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v8, v4

    const/4 v4, 0x1

    aput-object p3, v8, v4

    const/4 v9, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1048
    if-nez v10, :cond_31

    .line 1049
    const-string v4, "MiscPolicy"

    const-string/jumbo v5, "removeBookmarkFromAndroidBrowser() - No provider found!!!"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_27} :catch_aa
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_27} :catch_bb
    .catchall {:try_start_6 .. :try_end_27} :catchall_e1

    .line 1050
    const/4 v4, 0x0

    .line 1083
    if-eqz v10, :cond_2d

    .line 1084
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1085
    :cond_2d
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1088
    :goto_30
    return v4

    .line 1052
    :cond_31
    :try_start_31
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    .line 1054
    .local v13, "first":Z
    if-nez v13, :cond_49

    .line 1055
    const-string v4, "MiscPolicy"

    const-string/jumbo v5, "removeBookmarkFromAndroidBrowser() - Empty cursor!!!"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_31 .. :try_end_3f} :catch_aa
    .catch Ljava/lang/IllegalStateException; {:try_start_31 .. :try_end_3f} :catch_bb
    .catchall {:try_start_31 .. :try_end_3f} :catchall_e1

    .line 1056
    const/4 v4, 0x0

    .line 1083
    if-eqz v10, :cond_45

    .line 1084
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1085
    :cond_45
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_30

    .line 1059
    :cond_49
    :try_start_49
    sget-object v4, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v6, v5

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    .line 1061
    .local v18, "uri":Landroid/net/Uri;
    const/4 v4, 0x2

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1062
    .local v14, "numVisits":I
    if-nez v14, :cond_7a

    if-eqz v18, :cond_7a

    .line 1063
    const-string v4, "MiscPolicy"

    const-string/jumbo v5, "removeBookmarkFromAndroidBrowser() - Deleting bookmark"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_49 .. :try_end_6f} :catch_aa
    .catch Ljava/lang/IllegalStateException; {:try_start_49 .. :try_end_6f} :catch_bb
    .catchall {:try_start_49 .. :try_end_6f} :catchall_e1

    .line 1077
    :goto_6f
    const/4 v15, 0x1

    .line 1083
    if-eqz v10, :cond_75

    .line 1084
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1085
    :cond_75
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v13    # "first":Z
    .end local v14    # "numVisits":I
    .end local v18    # "uri":Landroid/net/Uri;
    :goto_78
    move v4, v15

    .line 1088
    goto :goto_30

    .line 1068
    .restart local v13    # "first":Z
    .restart local v14    # "numVisits":I
    .restart local v18    # "uri":Landroid/net/Uri;
    :cond_7a
    :try_start_7a
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 1069
    .local v19, "values":Landroid/content/ContentValues;
    const-string v4, "bookmark"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_8b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7a .. :try_end_8b} :catch_aa
    .catch Ljava/lang/IllegalStateException; {:try_start_7a .. :try_end_8b} :catch_bb
    .catchall {:try_start_7a .. :try_end_8b} :catchall_e1

    .line 1071
    :try_start_8b
    const-string v4, "MiscPolicy"

    const-string/jumbo v5, "removeBookmarkFromAndroidBrowser() - Updating database"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9e
    .catch Ljava/lang/IllegalStateException; {:try_start_8b .. :try_end_9e} :catch_9f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8b .. :try_end_9e} :catch_aa
    .catchall {:try_start_8b .. :try_end_9e} :catchall_e1

    goto :goto_6f

    .line 1073
    :catch_9f
    move-exception v11

    .line 1074
    .local v11, "e":Ljava/lang/IllegalStateException;
    :try_start_a0
    const-string/jumbo v4, "removeFromBookmarks"

    const-string/jumbo v5, "no database!"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a0 .. :try_end_a9} :catch_aa
    .catch Ljava/lang/IllegalStateException; {:try_start_a0 .. :try_end_a9} :catch_bb
    .catchall {:try_start_a0 .. :try_end_a9} :catchall_e1

    goto :goto_6f

    .line 1078
    .end local v11    # "e":Ljava/lang/IllegalStateException;
    .end local v13    # "first":Z
    .end local v14    # "numVisits":I
    .end local v18    # "uri":Landroid/net/Uri;
    .end local v19    # "values":Landroid/content/ContentValues;
    :catch_aa
    move-exception v12

    .line 1079
    .local v12, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_ab
    const-string v4, "MiscPolicy"

    const-string v5, "Android provider error - unknown uri"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b2
    .catchall {:try_start_ab .. :try_end_b2} :catchall_e1

    .line 1083
    if-eqz v10, :cond_b7

    .line 1084
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1085
    :cond_b7
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_78

    .line 1080
    .end local v12    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_bb
    move-exception v12

    .line 1081
    .local v12, "ex":Ljava/lang/IllegalStateException;
    :try_start_bc
    const-string v4, "MiscPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Android provider error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d8
    .catchall {:try_start_bc .. :try_end_d8} :catchall_e1

    .line 1083
    if-eqz v10, :cond_dd

    .line 1084
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1085
    :cond_dd
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_78

    .line 1083
    .end local v12    # "ex":Ljava/lang/IllegalStateException;
    :catchall_e1
    move-exception v4

    if-eqz v10, :cond_e7

    .line 1084
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1085
    :cond_e7
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private removeBookmarkFromChrome(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1009
    const/4 v1, 0x0

    .line 1010
    .local v1, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1012
    .local v4, "token":J
    :try_start_7
    sget-object v7, CHROME_BOOKMARKS_URI:Landroid/net/Uri;

    const-string/jumbo v8, "url = ? AND title = ?"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    const/4 v10, 0x1

    aput-object p3, v9, v10

    invoke-virtual {p1, v7, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1015
    .local v2, "rows":I
    const-string v7, "MiscPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removeBookmarkFromChrome() - rows: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    if-nez v2, :cond_43

    .line 1024
    sget-object v7, CHROME_BOOKMARKS_URI:Landroid/net/Uri;

    const-string/jumbo v8, "url = ?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    invoke-virtual {p1, v7, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_42} :catch_4c
    .catchall {:try_start_7 .. :try_end_42} :catchall_58

    move-result v2

    .line 1028
    :cond_43
    if-lez v2, :cond_4a

    move v1, v3

    .line 1032
    :goto_46
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1035
    .end local v2    # "rows":I
    :goto_49
    return v1

    .restart local v2    # "rows":I
    :cond_4a
    move v1, v6

    .line 1028
    goto :goto_46

    .line 1029
    .end local v2    # "rows":I
    :catch_4c
    move-exception v0

    .line 1030
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_4d
    const-string v3, "MiscPolicy"

    const-string v6, "Chrome provider error - unknown uri"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_58

    .line 1032
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_49

    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catchall_58
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private removeBookmarkFromSBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 991
    const/4 v1, 0x0

    .line 992
    .local v1, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 994
    .local v4, "token":J
    :try_start_7
    sget-object v7, SBROWSER_BOOKMARKS_URI:Landroid/net/Uri;

    const-string/jumbo v8, "url = ? AND title = ?"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    const/4 v10, 0x1

    aput-object p3, v9, v10

    invoke-virtual {p1, v7, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 997
    .local v2, "rows":I
    const-string v7, "MiscPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removeBookmarkFromSBrowser() - rows: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_32} :catch_3b
    .catchall {:try_start_7 .. :try_end_32} :catchall_47

    .line 998
    if-lez v2, :cond_39

    move v1, v3

    .line 1002
    :goto_35
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1005
    .end local v2    # "rows":I
    :goto_38
    return v1

    .restart local v2    # "rows":I
    :cond_39
    move v1, v6

    .line 998
    goto :goto_35

    .line 999
    .end local v2    # "rows":I
    :catch_3b
    move-exception v0

    .line 1000
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_3c
    const-string v3, "MiscPolicy"

    const-string v6, "Sbrowser provider error - unknown uri"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_47

    .line 1002
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_38

    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catchall_47
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private removeFromBookmarks(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1096
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 1097
    .local v4, "userId":I
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string v8, "android"

    invoke-static {v7, v8, v5, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v2

    .line 1099
    .local v2, "context":Landroid/content/Context;
    if-nez v2, :cond_19

    .line 1100
    const-string v6, "MiscPolicy"

    const-string/jumbo v7, "removeFromBookmarks() - Could not create context for current user!"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    :cond_18
    :goto_18
    return v5

    .line 1104
    :cond_19
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1105
    .local v3, "cr":Landroid/content/ContentResolver;
    invoke-direct {p0, v3, p2, p3}, removeBookmarkFromChrome(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1106
    .local v0, "bookmarkRemovedFromChrome":Z
    invoke-direct {p0, v3, p2, p3}, removeBookmarkFromSBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1108
    .local v1, "bookmarkRemovedFromSBrowser":Z
    if-nez v1, :cond_31

    .line 1111
    invoke-direct {p0, v3, p2, p3}, removeBookmarkFromAndroidBrowser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2f

    if-eqz v0, :cond_18

    :cond_2f
    move v5, v6

    goto :goto_18

    :cond_31
    move v5, v6

    .line 1114
    goto :goto_18
.end method

.method private retrieveSystemFontSizes()V
    .registers 10

    .prologue
    .line 1966
    iget-object v6, p0, mFontSizes:[F

    if-eqz v6, :cond_5

    .line 1996
    :cond_4
    :goto_4
    return-void

    .line 1970
    :cond_5
    const/4 v5, 0x0

    .line 1971
    .local v5, "resources":Landroid/content/res/Resources;
    :try_start_6
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "com.android.settings"

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 1972
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_24

    .line 1973
    const-string v6, "MiscPolicy"

    const-string/jumbo v7, "retrieveSystemFontSizes(): Setting Context is null"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_19} :catch_1a

    goto :goto_4

    .line 1993
    .end local v0    # "context":Landroid/content/Context;
    :catch_1a
    move-exception v1

    .line 1994
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "MiscPolicy"

    const-string/jumbo v7, "retrieveSystemFontSizes() fail: "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1976
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "context":Landroid/content/Context;
    :cond_24
    :try_start_24
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1977
    const/4 v4, 0x0

    .line 1978
    .local v4, "resId":I
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v6

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_7_STEP_FONTSIZE"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 1979
    const-string/jumbo v6, "entryvalues_7_step_font_size"

    const-string v7, "array"

    const-string v8, "com.android.settings"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1983
    :goto_40
    if-nez v4, :cond_68

    .line 1984
    const-string v6, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "retrieveSystemFontSizes() resourceID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1981
    :cond_5c
    const-string/jumbo v6, "entryvalues_font_size"

    const-string v7, "array"

    const-string v8, "com.android.settings"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_40

    .line 1988
    :cond_68
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1989
    .local v2, "fontSizeNames":[Ljava/lang/String;
    array-length v6, v2

    new-array v6, v6, [F

    iput-object v6, p0, mFontSizes:[F

    .line 1990
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_72
    iget-object v6, p0, mFontSizes:[F

    array-length v6, v6

    if-ge v3, v6, :cond_4

    .line 1991
    iget-object v6, p0, mFontSizes:[F

    aget-object v7, v2, v3

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aput v7, v6, v3
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_81} :catch_1a

    .line 1990
    add-int/lit8 v3, v3, 0x1

    goto :goto_72
.end method

.method private declared-synchronized setGlobalProxy(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)I
    .registers 23
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "hostName"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2133
    .local p4, "exclusionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_1
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    if-ltz p3, :cond_20

    const v2, 0xffff

    move/from16 v0, p3

    if-gt v0, v2, :cond_20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, validateIp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    invoke-static/range {p2 .. p2}, validateHostName(Ljava/lang/String;)Z
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_fc

    move-result v2

    if-nez v2, :cond_23

    .line 2136
    :cond_20
    const/4 v2, 0x0

    .line 2195
    :goto_21
    monitor-exit p0

    return v2

    .line 2140
    :cond_23
    :try_start_23
    invoke-virtual/range {p0 .. p0}, isGlobalProxyAllowed()Z

    move-result v2

    if-nez v2, :cond_4d

    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v5, "RESTRICTION"

    const-string/jumbo v6, "globalProxy"

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z
    :try_end_3d
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_23 .. :try_end_3d} :catch_42
    .catchall {:try_start_23 .. :try_end_3d} :catchall_fc

    move-result v2

    if-nez v2, :cond_4d

    .line 2143
    const/4 v2, 0x0

    goto :goto_21

    .line 2145
    :catch_42
    move-exception v11

    .line 2146
    .local v11, "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    :try_start_43
    const-string v2, "MiscPolicy"

    const-string/jumbo v3, "setGlobalProxy.SettingNotFoundException"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2147
    const/4 v2, 0x0

    goto :goto_21

    .line 2153
    .end local v11    # "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    :cond_4d
    invoke-direct/range {p0 .. p0}, getConnectivityManagerService()Landroid/net/IConnectivityManager;
    :try_end_50
    .catchall {:try_start_43 .. :try_end_50} :catchall_fc

    move-result-object v2

    if-eqz v2, :cond_f9

    .line 2156
    if-eqz p4, :cond_67

    :try_start_55
    const-string v2, ""

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_67

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_93

    .line 2158
    :cond_67
    const-string v12, ""

    .line 2172
    .local v12, "exclusionString":Ljava/lang/String;
    :goto_69
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v12, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2173
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Landroid/net/Proxy;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    new-instance v14, Landroid/net/ProxyInfo;

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v14, v0, v1, v2}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 2176
    .local v14, "proxy":Landroid/net/ProxyInfo;
    invoke-virtual {v14}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v2

    if-nez v2, :cond_c1

    .line 2177
    const/4 v2, 0x0

    goto :goto_21

    .line 2160
    .end local v12    # "exclusionString":Ljava/lang/String;
    .end local v14    # "proxy":Landroid/net/ProxyInfo;
    :cond_93
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2161
    .local v8, "builder":Ljava/lang/StringBuilder;
    const/4 v9, 0x1

    .line 2162
    .local v9, "domain":Z
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_9d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bc

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2163
    .local v10, "domainAddress":Ljava/lang/String;
    if-nez v9, :cond_ba

    .line 2164
    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2168
    :goto_b1
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2169
    goto :goto_9d

    .line 2166
    :cond_ba
    const/4 v9, 0x0

    goto :goto_b1

    .line 2170
    .end local v10    # "domainAddress":Ljava/lang/String;
    :cond_bc
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "exclusionString":Ljava/lang/String;
    goto :goto_69

    .line 2180
    .end local v8    # "builder":Ljava/lang/StringBuilder;
    .end local v9    # "domain":Z
    .end local v13    # "i$":Ljava/util/Iterator;
    .restart local v14    # "proxy":Landroid/net/ProxyInfo;
    :cond_c1
    invoke-direct/range {p0 .. p1}, clearGlobalProxyEnable(Landroid/app/enterprise/ContextInfo;)I

    .line 2183
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 2184
    .local v16, "token":J
    move-object/from16 v0, p0

    iget-object v2, v0, mCon:Landroid/net/IConnectivityManager;

    invoke-interface {v2, v14}, Landroid/net/IConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    .line 2185
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2187
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v5, "RESTRICTION"

    const-string/jumbo v6, "globalProxy"

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_e7
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_e7} :catch_f0
    .catchall {:try_start_55 .. :try_end_e7} :catchall_fc

    move-result v2

    if-eqz v2, :cond_ed

    const/4 v2, 0x1

    goto/16 :goto_21

    :cond_ed
    const/4 v2, 0x0

    goto/16 :goto_21

    .line 2191
    .end local v12    # "exclusionString":Ljava/lang/String;
    .end local v14    # "proxy":Landroid/net/ProxyInfo;
    .end local v16    # "token":J
    :catch_f0
    move-exception v11

    .line 2192
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_f1
    const-string v2, "MiscPolicy"

    const-string/jumbo v3, "setGlobalProxy.RemoteException"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f9
    .catchall {:try_start_f1 .. :try_end_f9} :catchall_fc

    .line 2195
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_f9
    const/4 v2, 0x0

    goto/16 :goto_21

    .line 2133
    :catchall_fc
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private setGlobalProxyOnBoot()V
    .registers 9

    .prologue
    .line 2307
    const/4 v2, 0x0

    .line 2309
    .local v2, "proxy":Landroid/net/ProxyInfo;
    :try_start_1
    invoke-direct {p0}, getConnectivityManagerService()Landroid/net/IConnectivityManager;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 2310
    iget-object v3, p0, mCon:Landroid/net/IConnectivityManager;

    invoke-interface {v3}, Landroid/net/IConnectivityManager;->getGlobalProxy()Landroid/net/ProxyInfo;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_31

    move-result-object v2

    .line 2315
    :cond_d
    :goto_d
    if-eqz v2, :cond_30

    .line 2317
    :try_start_f
    new-instance v1, Landroid/net/ProxyInfo;

    const-string v3, ""

    const/4 v6, 0x0

    const-string v7, ""

    invoke-direct {v1, v3, v6, v7}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 2318
    .local v1, "emptyProxy":Landroid/net/ProxyInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2319
    .local v4, "token":J
    invoke-direct {p0}, getConnectivityManagerService()Landroid/net/IConnectivityManager;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 2320
    iget-object v3, p0, mCon:Landroid/net/IConnectivityManager;

    invoke-interface {v3, v1}, Landroid/net/IConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    .line 2321
    iget-object v3, p0, mCon:Landroid/net/IConnectivityManager;

    invoke-interface {v3, v2}, Landroid/net/IConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    .line 2323
    :cond_2d
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_30} :catch_3b

    .line 2328
    .end local v1    # "emptyProxy":Landroid/net/ProxyInfo;
    .end local v4    # "token":J
    :cond_30
    :goto_30
    return-void

    .line 2312
    :catch_31
    move-exception v0

    .line 2313
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MiscPolicy"

    const-string/jumbo v6, "getGlobalProxy.RemoteException"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 2324
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_3b
    move-exception v0

    .line 2325
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v3, "MiscPolicy"

    const-string/jumbo v6, "setGlobalProxy.RemoteException"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30
.end method

.method private updateDatabase(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ringtonefilePath"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 388
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 389
    .local v8, "ringtoneFile":Ljava/io/File;
    const/4 v12, 0x0

    invoke-static {v12}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 390
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 392
    .local v9, "uri":Landroid/net/Uri;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 394
    .local v10, "token":J
    :try_start_17
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v9}, isRingToneEntryExist(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/net/Uri;)J

    move-result-wide v6

    .line 395
    .local v6, "lRingToneId":J
    const-string v12, "MiscPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ringtone id :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-wide/16 v12, -0x1

    cmp-long v12, v12, v6

    if-eqz v12, :cond_6a

    .line 398
    const-string v12, "MiscPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ringtone entry exist deleting it :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v12, v0, mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-static {v9, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 402
    :cond_6a
    const-string v12, "MiscPolicy"

    const-string v13, "Ringtone creating new one"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 405
    .local v2, "content":Landroid/content/ContentValues;
    const-string v12, "_data"

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string/jumbo v12, "title"

    const-string v13, "IT Admin tone"

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v12, "_size"

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 408
    const-string/jumbo v12, "mime_type"

    const-string v13, "audio/*"

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v12, "artist"

    const-string v13, "artist"

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string/jumbo v12, "is_ringtone"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 411
    const-string/jumbo v12, "is_notification"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 412
    const-string/jumbo v12, "is_alarm"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 413
    const-string/jumbo v12, "is_music"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v12, v0, mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-virtual {v12, v9, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_da} :catch_f0
    .catchall {:try_start_17 .. :try_end_da} :catchall_f8

    move-result-object v9

    .line 421
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 424
    .end local v2    # "content":Landroid/content/ContentValues;
    .end local v6    # "lRingToneId":J
    :goto_de
    if-eqz v9, :cond_ef

    .line 425
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 426
    .local v4, "ident":J
    move-object/from16 v0, p0

    iget-object v12, v0, mContext:Landroid/content/Context;

    const/4 v13, 0x1

    invoke-static {v12, v13, v9}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 428
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 431
    .end local v4    # "ident":J
    :cond_ef
    return-void

    .line 418
    :catch_f0
    move-exception v3

    .line 419
    .local v3, "e":Ljava/lang/Exception;
    :try_start_f1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f4
    .catchall {:try_start_f1 .. :try_end_f4} :catchall_f8

    .line 421
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_de

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_f8
    move-exception v12

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12
.end method

.method private static validateHostName(Ljava/lang/String;)Z
    .registers 16
    .param p0, "hostName"    # Ljava/lang/String;

    .prologue
    const/16 v14, 0x2d

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2205
    if-nez p0, :cond_7

    .line 2281
    :cond_6
    :goto_6
    return v10

    .line 2212
    :cond_7
    const-string v12, "*"

    invoke-virtual {p0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    move v10, v11

    .line 2213
    goto :goto_6

    .line 2218
    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0xff

    if-gt v12, v13, :cond_6

    .line 2225
    const-string v12, "\\."

    invoke-virtual {p0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2231
    .local v6, "labels":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 2232
    .local v4, "isHostnameCandidate":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    aget-object v12, v6, v10

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v2, v12, :cond_40

    .line 2233
    aget-object v12, v6, v10

    invoke-virtual {v12, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2234
    .local v1, "ch":C
    const/16 v12, 0x61

    if-lt v1, v12, :cond_37

    const/16 v12, 0x7a

    if-le v1, v12, :cond_3f

    :cond_37
    const/16 v12, 0x41

    if-lt v1, v12, :cond_57

    const/16 v12, 0x5a

    if-gt v1, v12, :cond_57

    .line 2235
    :cond_3f
    const/4 v4, 0x1

    .line 2242
    .end local v1    # "ch":C
    :cond_40
    if-eqz v4, :cond_6

    .line 2246
    const/4 v8, 0x0

    .line 2247
    .local v8, "numDots":I
    const/4 v2, 0x0

    :goto_44
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v2, v12, :cond_5a

    .line 2248
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x2e

    if-ne v12, v13, :cond_54

    .line 2249
    add-int/lit8 v8, v8, 0x1

    .line 2247
    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 2232
    .end local v8    # "numDots":I
    .restart local v1    # "ch":C
    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 2255
    .end local v1    # "ch":C
    .restart local v8    # "numDots":I
    :cond_5a
    array-length v12, v6

    if-ge v8, v12, :cond_6

    .line 2261
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_60
    if-ge v3, v7, :cond_6f

    aget-object v5, v0, v3

    .line 2262
    .local v5, "label":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x3f

    if-gt v12, v13, :cond_6

    .line 2261
    add-int/lit8 v3, v3, 0x1

    goto :goto_60

    .line 2273
    .end local v5    # "label":Ljava/lang/String;
    :cond_6f
    const-string v9, "^[A-Za-z0-9-]+$"

    .line 2274
    .local v9, "regex":Ljava/lang/String;
    move-object v0, v6

    array-length v7, v0

    const/4 v3, 0x0

    :goto_74
    if-ge v3, v7, :cond_93

    aget-object v5, v0, v3

    .line 2275
    .restart local v5    # "label":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v12, v14, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v12, v14, :cond_6

    .line 2274
    add-int/lit8 v3, v3, 0x1

    goto :goto_74

    .end local v5    # "label":Ljava/lang/String;
    :cond_93
    move v10, v11

    .line 2281
    goto/16 :goto_6
.end method

.method private validateIp(Ljava/lang/String;)Z
    .registers 4
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 2436
    if-eqz p1, :cond_d

    .line 2437
    sget-object v1, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2438
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    .line 2440
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method


# virtual methods
.method public addClipboardData(Landroid/content/ClipData;)Z
    .registers 3
    .param p1, "clip"    # Landroid/content/ClipData;

    .prologue
    .line 1702
    const/4 v0, 0x1

    return v0
.end method

.method public addClipboardTextData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "clip"    # Ljava/lang/String;

    .prologue
    .line 1792
    invoke-direct/range {p0 .. p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1794
    const/4 v7, 0x0

    .line 1795
    .local v7, "sService":Landroid/content/IClipboard;
    const/4 v8, 0x0

    .line 1796
    .local v8, "sServiceEx":Landroid/sec/clipboard/IClipboardService;
    :try_start_5
    const-string/jumbo v13, "simple text"

    move-object/from16 v0, p2

    invoke-static {v13, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v6

    .line 1798
    .local v6, "mClip":Landroid/content/ClipData;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1799
    .local v10, "token":J
    const-string v13, "clipboard"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1800
    .local v2, "b":Landroid/os/IBinder;
    invoke-static {v2}, Landroid/content/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;

    move-result-object v7

    .line 1801
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v6, v13}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1803
    const-string v13, "clipboardEx"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1804
    .local v3, "bEx":Landroid/os/IBinder;
    invoke-static {v3}, Landroid/sec/clipboard/IClipboardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;

    move-result-object v8

    .line 1805
    new-instance v9, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v9}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 1807
    .local v9, "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    if-eqz v8, :cond_71

    if-eqz v9, :cond_71

    .line 1808
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    .line 1809
    invoke-virtual {v9}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetFomat()I

    move-result v13

    invoke-interface {v8, v13, v9}, Landroid/sec/clipboard/IClipboardService;->SetClipboardDataOriginalToEx(ILandroid/sec/clipboard/data/ClipboardData;)Z

    .line 1813
    :goto_4d
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v12

    .line 1814
    .local v12, "userId":I
    if-nez v12, :cond_6c

    .line 1815
    new-instance v5, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    invoke-direct {v5, v13}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5c} :catch_94

    .line 1817
    .local v5, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_5c
    const-string v13, "MiscPolicy"

    const-string v14, "addClipboardTextData"

    move-object/from16 v0, p2

    invoke-virtual {v5, v13, v14, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    const-string v13, "MiscPolicy"

    const-string v14, "addClipboardTextData calling gearPolicyManager  "

    invoke-static {v13, v14}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_6c} :catch_b3

    .line 1824
    .end local v5    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_6c
    :goto_6c
    :try_start_6c
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1825
    const/4 v13, 0x1

    .line 1830
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v3    # "bEx":Landroid/os/IBinder;
    .end local v6    # "mClip":Landroid/content/ClipData;
    .end local v9    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v10    # "token":J
    .end local v12    # "userId":I
    :goto_70
    return v13

    .line 1811
    .restart local v2    # "b":Landroid/os/IBinder;
    .restart local v3    # "bEx":Landroid/os/IBinder;
    .restart local v6    # "mClip":Landroid/content/ClipData;
    .restart local v9    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    .restart local v10    # "token":J
    :cond_71
    const-string v13, "MiscPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "In ClipboardManager...sServiceEx :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", txt :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_93} :catch_94

    goto :goto_4d

    .line 1828
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v3    # "bEx":Landroid/os/IBinder;
    .end local v6    # "mClip":Landroid/content/ClipData;
    .end local v9    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v10    # "token":J
    :catch_94
    move-exception v4

    .line 1829
    .local v4, "e":Ljava/lang/Exception;
    const-string v13, "MiscPolicy"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addClipboardData Exception "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    const/4 v13, 0x0

    goto :goto_70

    .line 1819
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "b":Landroid/os/IBinder;
    .restart local v3    # "bEx":Landroid/os/IBinder;
    .restart local v5    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v6    # "mClip":Landroid/content/ClipData;
    .restart local v9    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    .restart local v10    # "token":J
    .restart local v12    # "userId":I
    :catch_b3
    move-exception v4

    .line 1820
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_b4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b7} :catch_94

    goto :goto_6c
.end method

.method public addWebBookmarkBitmap(Landroid/app/enterprise/ContextInfo;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "iconBm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 760
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 761
    if-eqz p2, :cond_8

    if-nez p3, :cond_a

    .line 762
    :cond_8
    const/4 v0, 0x0

    .line 764
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p3, v1}, addBookmark(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    goto :goto_9
.end method

.method public addWebBookmarkByteBuffer(Landroid/app/enterprise/ContextInfo;Landroid/net/Uri;Ljava/lang/String;[B)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "iconBuffer"    # [B

    .prologue
    .line 748
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 749
    if-eqz p2, :cond_8

    if-nez p3, :cond_a

    .line 750
    :cond_8
    const/4 v0, 0x0

    .line 752
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p3, v1}, addBookmark(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    goto :goto_9
.end method

.method public allowNFCStateChange(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 2001
    invoke-direct {p0, p1}, enforceOwnerOnlyAndHwPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2002
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "MISC"

    const-string/jumbo v3, "nfcStateChangeAllowed"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 2004
    .local v9, "ret":Z
    if-eqz v9, :cond_4b

    .line 2005
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2007
    .local v10, "psToken":J
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_1a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "MiscPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has change NFC state change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_48
    .catchall {:try_start_1a .. :try_end_48} :catchall_6d

    .line 2011
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2014
    .end local v10    # "psToken":J
    :cond_4b
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v12

    .line 2015
    .local v12, "userId":I
    if-eqz v9, :cond_6c

    if-nez v12, :cond_6c

    .line 2016
    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2018
    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_5a
    const-string v0, "MiscPolicy"

    const-string v1, "allowNFCStateChange"

    invoke-virtual {p0}, isNFCStateChangeAllowed()Z

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2019
    const-string v0, "MiscPolicy"

    const-string v1, "allowNFCStateChange calling gearPolicyManager  "

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_6c} :catch_72

    .line 2024
    .end local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_6c
    :goto_6c
    return v9

    .line 2011
    .end local v12    # "userId":I
    .restart local v10    # "psToken":J
    :catchall_6d
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2020
    .end local v10    # "psToken":J
    .restart local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v12    # "userId":I
    :catch_72
    move-exception v7

    .line 2021
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6c
.end method

.method public changeLockScreenString(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 23
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "statement"    # Ljava/lang/String;

    .prologue
    .line 1197
    invoke-direct/range {p0 .. p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1198
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    .line 1199
    .local v8, "userId":I
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string v3, "android"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2, v3, v4, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v9

    .line 1201
    .local v9, "context":Landroid/content/Context;
    if-nez v9, :cond_22

    .line 1202
    const-string v2, "MiscPolicy"

    const-string v3, "Could not create context for current user!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    const/4 v15, 0x0

    .line 1293
    :goto_21
    return v15

    .line 1206
    :cond_22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1207
    .local v18, "token":J
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 1208
    .local v10, "cr":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, isAdminLockScreenStringSet(I)I

    move-result v11

    .line 1210
    .local v11, "currentSetAdminId":I
    const/4 v15, 0x0

    .line 1211
    .local v15, "ret":Z
    const/16 v16, 0x0

    .line 1213
    .local v16, "revoked":Z
    const/4 v2, -0x1

    if-eq v11, v2, :cond_48

    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-eq v11, v2, :cond_48

    .line 1214
    const-string v2, "MiscPolicy"

    const-string v3, "changeLockScreenString():get AdminId failed!! "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1217
    const/4 v15, 0x0

    goto :goto_21

    .line 1221
    :cond_48
    if-eqz p2, :cond_50

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-gez v2, :cond_54

    .line 1222
    :cond_50
    const/16 v16, 0x1

    .line 1223
    const-string p2, ""

    .line 1227
    :cond_54
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x100

    if-le v2, v3, :cond_7f

    .line 1228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v4, 0x100

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1229
    const-string v2, "MiscPolicy"

    const-string v3, "changeLockScreenString():lock screen text is truncated "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    :cond_7f
    if-nez v16, :cond_15e

    .line 1235
    const-string v2, "MiscPolicy"

    const-string v3, "changeLockScreenString(): apply restriction"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "MISC"

    const-string/jumbo v5, "lockscreenstring"

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v15

    .line 1240
    if-eqz v15, :cond_f8

    .line 1241
    const-string v2, "MiscPolicy"

    const-string v3, "changeLockScreenString(): ret is true set value"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    :try_start_a3
    invoke-direct/range {p0 .. p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    const-string/jumbo v3, "lock_screen_owner_info_enabled"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4, v8}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V

    .line 1247
    invoke-direct/range {p0 .. p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    const-string/jumbo v3, "lock_screen_owner_info"

    move-object/from16 v0, p2

    invoke-interface {v2, v3, v0, v8}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1249
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Admin "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v17, " has changed lock screen string to "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_f1
    .catch Landroid/os/RemoteException; {:try_start_a3 .. :try_end_f1} :catch_13e

    .line 1258
    :goto_f1
    const-string/jumbo v2, "my_profile_enabled"

    const/4 v3, 0x0

    invoke-static {v10, v2, v3, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1280
    :cond_f8
    :goto_f8
    if-eqz v15, :cond_115

    if-nez v8, :cond_115

    .line 1281
    new-instance v13, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-direct {v13, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1283
    .local v13, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_105
    const-string v2, "MiscPolicy"

    const-string v3, "changeLockScreenString"

    move-object/from16 v0, p2

    invoke-virtual {v13, v2, v3, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    const-string v2, "MiscPolicy"

    const-string v3, "changeLockScreenString calling gearPolicyManager  "

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_115} :catch_1d7

    .line 1289
    .end local v13    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_115
    :goto_115
    const-string v2, "MiscPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeLockScreenString():ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_21

    .line 1253
    :catch_13e
    move-exception v14

    .line 1254
    .local v14, "re":Landroid/os/RemoteException;
    const-string v2, "MiscPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t write string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f1

    .line 1263
    .end local v14    # "re":Landroid/os/RemoteException;
    :cond_15e
    const-string v2, "MiscPolicy"

    const-string v3, "changeLockScreenString(): revoke restriction"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "MISC"

    const-string/jumbo v5, "lockscreenstring"

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v15

    .line 1270
    :try_start_177
    invoke-direct/range {p0 .. p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    const-string/jumbo v3, "lock_screen_owner_info"

    move-object/from16 v0, p2

    invoke-interface {v2, v3, v0, v8}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1272
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Admin "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v17, " has cleared the lock screen string."

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1b4
    .catch Landroid/os/RemoteException; {:try_start_177 .. :try_end_1b4} :catch_1b6

    goto/16 :goto_f8

    .line 1276
    :catch_1b6
    move-exception v14

    .line 1277
    .restart local v14    # "re":Landroid/os/RemoteException;
    const-string v2, "MiscPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t write string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f8

    .line 1285
    .end local v14    # "re":Landroid/os/RemoteException;
    .restart local v13    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_1d7
    move-exception v12

    .line 1286
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_115
.end method

.method public declared-synchronized clearAllGlobalProxy()V
    .registers 6

    .prologue
    .line 2392
    monitor-enter p0

    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2393
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v3, "globalProxy"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2394
    const/4 v2, 0x0

    .line 2395
    .local v2, "nullCv":Landroid/content/ContentValues;
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 2396
    .local v0, "base":Lcom/android/server/enterprise/storage/EdmStorageProviderBase;
    const-string v3, "RESTRICTION"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 2397
    monitor-exit p0

    return-void

    .line 2392
    .end local v0    # "base":Lcom/android/server/enterprise/storage/EdmStorageProviderBase;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "nullCv":Landroid/content/ContentValues;
    :catchall_20
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public clearClipboardData(Landroid/app/enterprise/ContextInfo;)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v10, 0x0

    .line 1710
    invoke-direct {p0, p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1712
    :try_start_4
    const-string v11, "MiscPolicy"

    const-string v12, "clearClipboard"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1714
    .local v8, "token":J
    const-string v11, "clipboardEx"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1715
    .local v1, "bEx":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/sec/clipboard/IClipboardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;

    move-result-object v6

    .line 1716
    .local v6, "sServiceEx":Landroid/sec/clipboard/IClipboardService;
    if-eqz v6, :cond_61

    .line 1717
    new-instance v11, Lcom/android/server/enterprise/general/MiscPolicy$ClearClipboardData;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/android/server/enterprise/general/MiscPolicy$ClearClipboardData;-><init>(Lcom/android/server/enterprise/general/MiscPolicy$1;)V

    invoke-interface {v6, v11}, Landroid/sec/clipboard/IClipboardService;->RegistClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    .line 1722
    :goto_24
    const-string/jumbo v11, "simple text"

    const-string v12, ""

    invoke-static {v11, v12}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v4

    .line 1723
    .local v4, "mClip":Landroid/content/ClipData;
    const-string v11, "clipboard"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1724
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;

    move-result-object v5

    .line 1725
    .local v5, "sService":Landroid/content/IClipboard;
    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v4, v11}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1726
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_43} :catch_7a

    .line 1731
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 1732
    .local v7, "userId":I
    if-nez v7, :cond_5f

    .line 1733
    new-instance v3, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-direct {v3, v10}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1735
    .local v3, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_50
    const-string v10, "MiscPolicy"

    const-string v11, "clearClipboardData"

    const/4 v12, 0x0

    invoke-virtual {v3, v10, v11, v12}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1736
    const-string v10, "MiscPolicy"

    const-string v11, "clearClipboardData calling gearPolicyManager  "

    invoke-static {v10, v11}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_5f} :catch_7f

    .line 1741
    .end local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_5f
    :goto_5f
    const/4 v10, 0x1

    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "bEx":Landroid/os/IBinder;
    .end local v4    # "mClip":Landroid/content/ClipData;
    .end local v5    # "sService":Landroid/content/IClipboard;
    .end local v6    # "sServiceEx":Landroid/sec/clipboard/IClipboardService;
    .end local v7    # "userId":I
    .end local v8    # "token":J
    :goto_60
    return v10

    .line 1720
    .restart local v1    # "bEx":Landroid/os/IBinder;
    .restart local v6    # "sServiceEx":Landroid/sec/clipboard/IClipboardService;
    .restart local v8    # "token":J
    :cond_61
    :try_start_61
    const-string v11, "MiscPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "In clearClipboardData...sServiceEx :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_79} :catch_7a

    goto :goto_24

    .line 1727
    .end local v1    # "bEx":Landroid/os/IBinder;
    .end local v6    # "sServiceEx":Landroid/sec/clipboard/IClipboardService;
    .end local v8    # "token":J
    :catch_7a
    move-exception v2

    .line 1728
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_60

    .line 1737
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "b":Landroid/os/IBinder;
    .restart local v1    # "bEx":Landroid/os/IBinder;
    .restart local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v4    # "mClip":Landroid/content/ClipData;
    .restart local v5    # "sService":Landroid/content/IClipboard;
    .restart local v6    # "sServiceEx":Landroid/sec/clipboard/IClipboardService;
    .restart local v7    # "userId":I
    .restart local v8    # "token":J
    :catch_7f
    move-exception v2

    .line 1738
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5f
.end method

.method public clearGlobalProxyEnableEnforcingFirewallPermission(Landroid/app/enterprise/ContextInfo;)I
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2379
    invoke-direct {p0, p1}, enforceOwnerOnlyAndFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2380
    invoke-direct {p0, p1}, clearGlobalProxyEnable(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    return v0
.end method

.method public clearGlobalProxyEnableEnforcingSecurityPermission(Landroid/app/enterprise/ContextInfo;)I
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2384
    invoke-direct {p0, p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2385
    invoke-direct {p0, p1}, clearGlobalProxyEnable(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    return v0
.end method

.method public deleteWebBookmark(Landroid/app/enterprise/ContextInfo;Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 769
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 771
    if-nez p2, :cond_8

    .line 772
    const/4 v0, 0x0

    .line 774
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, removeFromBookmarks(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_7
.end method

.method public getClipboardData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ClipData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1706
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClipboardTextData(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1836
    invoke-direct {p0, p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1837
    const/4 v3, 0x0

    .line 1838
    .local v3, "returnText":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1840
    .local v6, "token":J
    const/4 v4, 0x0

    .line 1841
    .local v4, "sService":Landroid/content/IClipboard;
    :try_start_9
    const-string v5, "clipboard"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1842
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;

    move-result-object v4

    .line 1843
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/IClipboard;->getPrimaryClip(Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object v5

    if-eqz v5, :cond_38

    .line 1844
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/IClipboard;->getPrimaryClip(Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    .line 1845
    .local v1, "clipItem":Landroid/content/ClipData$Item;
    if-eqz v1, :cond_38

    .line 1846
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_37} :catch_3c
    .catchall {:try_start_9 .. :try_end_37} :catchall_5e

    move-result-object v3

    .line 1852
    .end local v1    # "clipItem":Landroid/content/ClipData$Item;
    :cond_38
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1854
    .end local v0    # "b":Landroid/os/IBinder;
    :goto_3b
    return-object v3

    .line 1849
    :catch_3c
    move-exception v2

    .line 1850
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3d
    const-string v5, "MiscPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getClipboardTextData Exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_3d .. :try_end_5a} :catchall_5e

    .line 1852
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3b

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_5e
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public getCurrentLockScreenString(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1134
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_10

    .line 1135
    invoke-direct {p0, p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1137
    :cond_10
    const/4 v1, 0x0

    .line 1139
    .local v1, "lScreenTxt":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 1140
    .local v3, "userId":I
    invoke-direct {p0, v3}, isAdminLockScreenStringSet(I)I

    move-result v0

    .line 1141
    .local v0, "currentSetAdminId":I
    const-string v6, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getCurrentLockScreenString : currentSetAdminId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    const/4 v6, -0x1

    if-eq v0, v6, :cond_48

    .line 1149
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1151
    .local v4, "token":J
    :try_start_39
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v6

    const-string/jumbo v7, "lock_screen_owner_info"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8, v3}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_44} :catch_49
    .catchall {:try_start_39 .. :try_end_44} :catchall_66

    move-result-object v1

    .line 1155
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1159
    .end local v4    # "token":J
    :cond_48
    :goto_48
    return-object v1

    .line 1152
    .restart local v4    # "token":J
    :catch_49
    move-exception v2

    .line 1153
    .local v2, "re":Landroid/os/RemoteException;
    :try_start_4a
    const-string v6, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t get string lock_screen_owner_info"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_4a .. :try_end_62} :catchall_66

    .line 1155
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_48

    .end local v2    # "re":Landroid/os/RemoteException;
    :catchall_66
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public getGlobalProxyEnforcingFirewallPermission(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2331
    invoke-direct {p0, p1}, enforceOwnerOnlyAndFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2332
    invoke-direct {p0, p1}, getGlobalProxy(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalProxyEnforcingSecurityPermission(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2336
    invoke-direct {p0, p1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2337
    invoke-direct {p0, p1}, getGlobalProxy(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLastSimChangeInfo(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/SimChangeInfo;
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 525
    invoke-direct {p0, p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 528
    :try_start_3
    new-instance v1, Landroid/app/enterprise/SimChangeInfo;

    invoke-direct {v1}, Landroid/app/enterprise/SimChangeInfo;-><init>()V

    .line 529
    .local v1, "sci":Landroid/app/enterprise/SimChangeInfo;
    const-string v3, "SimChangeTime"

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 531
    .local v2, "tmp":Ljava/lang/String;
    if-nez v2, :cond_14

    .line 532
    const-string v2, "-1"

    .line 533
    :cond_14
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/app/enterprise/SimChangeInfo;->changeTime:J

    .line 534
    new-instance v3, Landroid/app/enterprise/SimInfo;

    invoke-direct {v3}, Landroid/app/enterprise/SimInfo;-><init>()V

    iput-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    .line 535
    iget-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v4, "PreviousSimCountryIso"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/enterprise/SimInfo;->countryIso:Ljava/lang/String;

    .line 538
    iget-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v4, "PreviousSimOperatorName"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/enterprise/SimInfo;->operatorName:Ljava/lang/String;

    .line 541
    iget-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v4, "PreviousSimOperator"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/enterprise/SimInfo;->operator:Ljava/lang/String;

    .line 543
    iget-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v4, "PreviousSimPhoneNumber"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/enterprise/SimInfo;->phoneNumber:Ljava/lang/String;

    .line 546
    iget-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v4, "PreviousSimSerialNumber"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/enterprise/SimInfo;->serialNumber:Ljava/lang/String;

    .line 550
    const-string v3, "SimChangeOperation"

    const-string v4, "/data/system/SimCard.dat"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 552
    if-nez v2, :cond_69

    .line 553
    const-string v2, "-1"

    .line 554
    :cond_69
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/enterprise/SimChangeInfo;->changeOperation:I

    .line 557
    new-instance v3, Landroid/app/enterprise/SimInfo;

    invoke-direct {v3}, Landroid/app/enterprise/SimInfo;-><init>()V

    iput-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    .line 558
    iget-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v4, "CurrentSimCountryIso"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/enterprise/SimInfo;->countryIso:Ljava/lang/String;

    .line 561
    iget-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v4, "CurrentSimOperatorName"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/enterprise/SimInfo;->operatorName:Ljava/lang/String;

    .line 564
    iget-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v4, "CurrentSimOperator"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/enterprise/SimInfo;->operator:Ljava/lang/String;

    .line 566
    iget-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v4, "CurrentSimPhoneNumber"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/enterprise/SimInfo;->phoneNumber:Ljava/lang/String;

    .line 569
    iget-object v3, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v4, "CurrentSimSerialNumber"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/app/enterprise/SimInfo;->serialNumber:Ljava/lang/String;
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b2} :catch_b3

    .line 577
    .end local v1    # "sci":Landroid/app/enterprise/SimChangeInfo;
    .end local v2    # "tmp":Ljava/lang/String;
    :goto_b2
    return-object v1

    .line 574
    :catch_b3
    move-exception v0

    .line 575
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 577
    new-instance v1, Landroid/app/enterprise/SimChangeInfo;

    invoke-direct {v1}, Landroid/app/enterprise/SimChangeInfo;-><init>()V

    goto :goto_b2
.end method

.method public getSystemActiveFont(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1327
    invoke-direct {p0}, GetSystemFontChanger()Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getSystemActiveFont()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemActiveFontSize(Landroid/app/enterprise/ContextInfo;)F
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1919
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 1920
    .local v0, "curConfig":Landroid/content/res/Configuration;
    const/4 v4, 0x0

    iput v4, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 1923
    :try_start_8
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1924
    invoke-direct {p0}, retrieveSystemFontSizes()V

    .line 1925
    iget v4, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-direct {p0, v4}, floatToIndex(F)I

    move-result v3

    .line 1926
    .local v3, "index":I
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "font_size"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1928
    .local v2, "fontIndex":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_37

    const/4 v4, 0x4

    if-ne v2, v4, :cond_37

    .line 1929
    const/4 v3, 0x4

    .line 1930
    iget-object v4, p0, mFontSizes:[F

    aget v4, v4, v3

    iput v4, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 1932
    :cond_37
    const-string v4, "MiscPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSystemActiveFontSize(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_52} :catch_55

    .line 1937
    .end local v2    # "fontIndex":I
    .end local v3    # "index":I
    :goto_52
    iget v4, v0, Landroid/content/res/Configuration;->fontScale:F

    return v4

    .line 1933
    :catch_55
    move-exception v1

    .line 1934
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "MiscPolicy"

    const-string/jumbo v5, "getSystemActiveFontSize(): Unable to read font size"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52
.end method

.method public getSystemFontSizes(Landroid/app/enterprise/ContextInfo;)[F
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1944
    invoke-direct {p0}, retrieveSystemFontSizes()V

    .line 1945
    iget-object v0, p0, mFontSizes:[F

    return-object v0
.end method

.method public getSystemFonts(Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1337
    invoke-direct {p0}, GetSystemFontChanger()Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getSystemFonts()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isGlobalProxyAllowed()Z
    .registers 11

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2285
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "RESTRICTION"

    const-string/jumbo v9, "globalProxy"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 2288
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 2301
    :goto_17
    return v6

    .line 2291
    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2293
    .local v2, "token":J
    const/4 v1, 0x0

    .line 2294
    .local v1, "proxy":Landroid/net/ProxyInfo;
    :try_start_1d
    invoke-direct {p0}, getConnectivityManagerService()Landroid/net/IConnectivityManager;

    move-result-object v7

    if-eqz v7, :cond_29

    .line 2295
    iget-object v7, p0, mCon:Landroid/net/IConnectivityManager;

    invoke-interface {v7}, Landroid/net/IConnectivityManager;->getGlobalProxy()Landroid/net/ProxyInfo;
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_28} :catch_32
    .catchall {:try_start_1d .. :try_end_28} :catchall_37

    move-result-object v1

    .line 2297
    :cond_29
    if-nez v1, :cond_30

    .line 2301
    :goto_2b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v5

    goto :goto_17

    :cond_30
    move v5, v6

    .line 2297
    goto :goto_2b

    .line 2298
    :catch_32
    move-exception v0

    .line 2301
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_17

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_37
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public isNFCStarted()Z
    .registers 8

    .prologue
    .line 2074
    const/4 v4, 0x0

    .line 2075
    .local v4, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2077
    .local v2, "ident":J
    :try_start_5
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 2078
    .local v1, "nfcAdapter":Landroid/nfc/NfcAdapter;
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_18
    .catchall {:try_start_5 .. :try_end_e} :catchall_24

    move-result v5

    if-eqz v5, :cond_16

    .line 2079
    const/4 v4, 0x1

    .line 2086
    :goto_12
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2088
    .end local v1    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :goto_15
    return v4

    .line 2081
    .restart local v1    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :cond_16
    const/4 v4, 0x0

    goto :goto_12

    .line 2083
    .end local v1    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :catch_18
    move-exception v0

    .line 2084
    .local v0, "e":Ljava/lang/Exception;
    :try_start_19
    const-string v5, "MiscPolicy"

    const-string v6, "Error on isNFCStarted"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_24

    .line 2086
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_15

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_24
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public isNFCStateChangeAllowed()Z
    .registers 8

    .prologue
    .line 2028
    const/4 v1, 0x1

    .line 2029
    .local v1, "ret":Z
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "MISC"

    const-string/jumbo v6, "nfcStateChangeAllowed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2031
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2032
    .local v2, "value":Z
    if-nez v2, :cond_10

    .line 2033
    move v1, v2

    .line 2037
    .end local v2    # "value":Z
    :cond_23
    return v1
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1671
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 1676
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 7
    .param p1, "uid"    # I

    .prologue
    .line 1686
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {p0, v1}, isAdminLockScreenStringSet(I)I

    move-result v1

    if-ne v1, p1, :cond_1a

    .line 1689
    :try_start_a
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const-string/jumbo v2, "lock_screen_owner_info"

    const-string v3, ""

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1a} :catch_2a

    .line 1694
    :cond_1a
    :goto_1a
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-nez v1, :cond_29

    .line 1695
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-direct {p0, v1}, clearGlobalProxyEnable(Landroid/app/enterprise/ContextInfo;)I

    .line 1697
    :cond_29
    return-void

    .line 1690
    :catch_2a
    move-exception v0

    .line 1691
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "MiscPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public setGlobalProxyEnforcingFirewallPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)I
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "hostName"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2121
    .local p4, "exclusionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, enforceOwnerOnlyAndFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2122
    invoke-direct {p0, p1, p2, p3, p4}, setGlobalProxy(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)I

    move-result v0

    return v0
.end method

.method public setGlobalProxyEnforcingSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)I
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "hostName"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2127
    .local p4, "exclusionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2128
    invoke-direct {p0, p1, p2, p3, p4}, setGlobalProxy(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ILjava/util/List;)I

    move-result v0

    return v0
.end method

.method public setRingerBytes(Landroid/app/enterprise/ContextInfo;[BLjava/lang/String;)V
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "buffer"    # [B
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 337
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 338
    .local v0, "callerUid":I
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v6

    .line 341
    .local v6, "pkgName":Ljava/lang/String;
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-static {v8, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isPlatformSignedApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 343
    :try_start_12
    invoke-direct {p0, p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_15} :catch_2c

    move-result-object p1

    .line 352
    :goto_16
    const/4 v3, 0x0

    .line 355
    .local v3, "outStream":Ljava/io/OutputStream;
    if-eqz p2, :cond_1e

    :try_start_19
    array-length v8, p2

    if-lez v8, :cond_1e

    if-nez p3, :cond_6e

    .line 356
    :cond_1e
    const-string v8, "MiscPolicy"

    const-string/jumbo v9, "setRingerBytes: Invalid parameter(s)"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_26} :catch_bf
    .catchall {:try_start_19 .. :try_end_26} :catchall_e6

    .line 377
    if-eqz v3, :cond_2b

    .line 378
    :try_start_28
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_53

    .line 385
    :cond_2b
    :goto_2b
    return-void

    .line 344
    .end local v3    # "outStream":Ljava/io/OutputStream;
    :catch_2c
    move-exception v7

    .line 345
    .local v7, "se":Ljava/lang/SecurityException;
    const-string v8, "MiscPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MDM_SECURITY Permission is not granted - Check for WRITE_SETTINGS permission "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-direct {p0, p1}, enforceOwnerOnlyAndWriteSettingsPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 347
    goto :goto_16

    .line 350
    .end local v7    # "se":Ljava/lang/SecurityException;
    :cond_4e
    invoke-direct {p0, p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    goto :goto_16

    .line 380
    .restart local v3    # "outStream":Ljava/io/OutputStream;
    :catch_53
    move-exception v1

    .line 381
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "MiscPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setRingerBytes EX: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    .line 360
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6e
    :try_start_6e
    const-string v5, "/data/system/custom.ogg"

    .line 362
    .local v5, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7e

    .line 365
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 367
    :cond_7e
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_83} :catch_bf
    .catchall {:try_start_6e .. :try_end_83} :catchall_e6

    .line 368
    .end local v3    # "outStream":Ljava/io/OutputStream;
    .local v4, "outStream":Ljava/io/OutputStream;
    :try_start_83
    invoke-virtual {v4, p2}, Ljava/io/OutputStream;->write([B)V

    .line 369
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 370
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1ff

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-static {v8, v9, v10, v11}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 372
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v8, p3}, updateDatabase(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_9b} :catch_10b
    .catchall {:try_start_83 .. :try_end_9b} :catchall_108

    .line 377
    if-eqz v4, :cond_a0

    .line 378
    :try_start_9d
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_a2

    :cond_a0
    move-object v3, v4

    .line 383
    .end local v4    # "outStream":Ljava/io/OutputStream;
    .restart local v3    # "outStream":Ljava/io/OutputStream;
    goto :goto_2b

    .line 380
    .end local v3    # "outStream":Ljava/io/OutputStream;
    .restart local v4    # "outStream":Ljava/io/OutputStream;
    :catch_a2
    move-exception v1

    .line 381
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "MiscPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setRingerBytes EX: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 384
    .end local v4    # "outStream":Ljava/io/OutputStream;
    .restart local v3    # "outStream":Ljava/io/OutputStream;
    goto/16 :goto_2b

    .line 373
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "path":Ljava/lang/String;
    :catch_bf
    move-exception v1

    .line 374
    .local v1, "e":Ljava/lang/Exception;
    :goto_c0
    :try_start_c0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c3
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_e6

    .line 377
    if-eqz v3, :cond_2b

    .line 378
    :try_start_c5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_ca

    goto/16 :goto_2b

    .line 380
    :catch_ca
    move-exception v1

    .line 381
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "MiscPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setRingerBytes EX: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b

    .line 376
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_e6
    move-exception v8

    .line 377
    :goto_e7
    if-eqz v3, :cond_ec

    .line 378
    :try_start_e9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_ec} :catch_ed

    .line 383
    :cond_ec
    :goto_ec
    throw v8

    .line 380
    :catch_ed
    move-exception v1

    .line 381
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "MiscPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setRingerBytes EX: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ec

    .line 376
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "outStream":Ljava/io/OutputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "outStream":Ljava/io/OutputStream;
    .restart local v5    # "path":Ljava/lang/String;
    :catchall_108
    move-exception v8

    move-object v3, v4

    .end local v4    # "outStream":Ljava/io/OutputStream;
    .restart local v3    # "outStream":Ljava/io/OutputStream;
    goto :goto_e7

    .line 373
    .end local v3    # "outStream":Ljava/io/OutputStream;
    .restart local v4    # "outStream":Ljava/io/OutputStream;
    :catch_10b
    move-exception v1

    move-object v3, v4

    .end local v4    # "outStream":Ljava/io/OutputStream;
    .restart local v3    # "outStream":Ljava/io/OutputStream;
    goto :goto_c0
.end method

.method public setRingerFilePath(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "aRingtonefilePath"    # Ljava/lang/String;
    .param p3, "aRingtone"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "aMmimeType"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-direct {p0, p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 269
    if-eqz p2, :cond_8

    if-nez p4, :cond_11

    .line 270
    :cond_8
    const-string v2, "MiscPolicy"

    const-string/jumbo v3, "setRingerFilePath param null"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :goto_10
    return-void

    .line 274
    :cond_11
    invoke-direct {p0, p3, p2}, copyFileFromParcel(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "tempFilePath":Ljava/lang/String;
    if-nez v1, :cond_20

    .line 276
    const-string v2, "MiscPolicy"

    const-string/jumbo v3, "file not created"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 280
    :cond_20
    invoke-direct {p0, v1}, readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 282
    .local v0, "lRingToneData":[B
    if-eqz v0, :cond_3d

    .line 283
    const-string v2, "MiscPolicy"

    const-string/jumbo v3, "setRingerFilePath file read successfully: "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0, p1, v0, p4}, setRingerBytes(Landroid/app/enterprise/ContextInfo;[BLjava/lang/String;)V

    .line 288
    :goto_31
    invoke-static {v1}, Landroid/app/enterprise/lso/LSOUtils;->deleteFile(Ljava/lang/String;)V

    .line 289
    const-string v2, "MiscPolicy"

    const-string/jumbo v3, "setRingerFilePath : ringtone return "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 286
    :cond_3d
    const-string v2, "MiscPolicy"

    const-string/jumbo v3, "setRingerFilePath file reading failed "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31
.end method

.method public setSystemActiveFont(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "fontName"    # Ljava/lang/String;
    .param p3, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 1312
    invoke-direct {p0, p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1313
    if-eqz p3, :cond_7

    .line 1315
    const/4 v0, 0x0

    .line 1317
    :goto_6
    return v0

    :cond_7
    invoke-direct {p0}, GetSystemFontChanger()Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->setSystemActiveFont(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_6
.end method

.method public setSystemActiveFontSize(Landroid/app/enterprise/ContextInfo;F)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "fontSize"    # F

    .prologue
    const/4 v7, 0x0

    .line 1864
    const/4 v6, 0x1

    .line 1866
    .local v6, "ret":Z
    invoke-direct {p0, p1}, enforceOwnerOnlyAndSecurityPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1867
    invoke-direct {p0}, retrieveSystemFontSizes()V

    .line 1869
    iget-object v10, p0, mFontSizes:[F

    if-nez v10, :cond_d

    .line 1912
    :goto_c
    return v7

    .line 1872
    :cond_d
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "font_size"

    invoke-static {v10, v11, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1873
    .local v1, "currIndex":I
    invoke-direct {p0, p2}, floatToIndex(F)I

    move-result v5

    .line 1874
    .local v5, "newIndex":I
    iget-object v10, p0, mFontSizes:[F

    array-length v10, v10

    add-int/lit8 v4, v10, -0x1

    .line 1876
    .local v4, "indexLength":I
    if-ne v1, v5, :cond_2f

    .line 1877
    const-string v7, "MiscPolicy"

    const-string/jumbo v10, "setSystemActiveFontSize(): same font size"

    invoke-static {v7, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v6

    .line 1878
    goto :goto_c

    .line 1883
    :cond_2f
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "font_size"

    invoke-static {v10, v11, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1885
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1886
    .local v8, "token":J
    if-ge v1, v4, :cond_80

    if-ne v5, v4, :cond_80

    .line 1887
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1888
    .local v3, "i":Landroid/content/Intent;
    const-string/jumbo v7, "large_font"

    const/4 v10, 0x1

    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1889
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1895
    .end local v3    # "i":Landroid/content/Intent;
    :cond_56
    :goto_56
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1899
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 1900
    .local v0, "curConfig":Landroid/content/res/Configuration;
    iget-object v7, p0, mFontSizes:[F

    aget v7, v7, v5

    iput v7, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 1903
    :try_start_64
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1904
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7, v0}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 1905
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "font_size"

    invoke-static {v7, v10, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1906
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_7e} :catch_97

    :goto_7e
    move v7, v6

    .line 1912
    goto :goto_c

    .line 1890
    .end local v0    # "curConfig":Landroid/content/res/Configuration;
    :cond_80
    if-ne v1, v4, :cond_56

    if-ge v5, v4, :cond_56

    .line 1891
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1892
    .restart local v3    # "i":Landroid/content/Intent;
    const-string/jumbo v10, "large_font"

    invoke-virtual {v3, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1893
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_56

    .line 1907
    .end local v3    # "i":Landroid/content/Intent;
    .restart local v0    # "curConfig":Landroid/content/res/Configuration;
    :catch_97
    move-exception v2

    .line 1908
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "MiscPolicy"

    const-string/jumbo v10, "setSystemActiveFontSize(): Unable to set font size"

    invoke-static {v7, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    const/4 v6, 0x0

    goto :goto_7e
.end method

.method public startNFC(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "start"    # Z

    .prologue
    .line 2041
    invoke-direct {p0, p1}, enforceOwnerOnlyAndHwPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2042
    const/4 v5, 0x0

    .line 2043
    .local v5, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2045
    .local v2, "ident":J
    :try_start_9
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    .line 2047
    .local v4, "nfcAdapter":Landroid/nfc/NfcAdapter;
    if-eqz p2, :cond_38

    .line 2048
    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enable()Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_14} :catch_3d
    .catchall {:try_start_9 .. :try_end_14} :catchall_49

    move-result v5

    .line 2058
    :goto_15
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2060
    .end local v4    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :goto_18
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 2061
    .local v6, "userId":I
    if-eqz v5, :cond_37

    if-nez v6, :cond_37

    .line 2062
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2064
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_27
    const-string v7, "MiscPolicy"

    const-string/jumbo v8, "startNFC"

    invoke-virtual {v1, v7, v8, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2065
    const-string v7, "MiscPolicy"

    const-string/jumbo v8, "startNFC calling gearPolicyManager  "

    invoke-static {v7, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_37} :catch_4e

    .line 2070
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_37
    :goto_37
    return v5

    .line 2050
    .end local v6    # "userId":I
    .restart local v4    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :cond_38
    :try_start_38
    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->disable()Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3d
    .catchall {:try_start_38 .. :try_end_3b} :catchall_49

    move-result v5

    goto :goto_15

    .line 2055
    .end local v4    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :catch_3d
    move-exception v0

    .line 2056
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3e
    const-string v7, "MiscPolicy"

    const-string v8, "Error on Start/Stop NFC"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_49

    .line 2058
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_18

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_49
    move-exception v7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 2066
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v6    # "userId":I
    :catch_4e
    move-exception v0

    .line 2067
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_37
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 1682
    return-void
.end method
