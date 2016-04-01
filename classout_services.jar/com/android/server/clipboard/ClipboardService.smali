.class public Lcom/android/server/clipboard/ClipboardService;
.super Landroid/content/IClipboard$Stub;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;,
        Lcom/android/server/clipboard/ClipboardService$ListenerInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardService"

.field private static final is3LMAllowed:Z


# instance fields
.field private GENERIC_CATEGORY_END:I

.field private GENERIC_CATEGORY_START:I

.field private GOOD_CATEGORY:I

.field private final mAm:Landroid/app/IActivityManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mClipboards:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerID:I

.field private final mContext:Landroid/content/Context;

.field private final mPermissionOwner:Landroid/os/IBinder;

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mUm:Landroid/os/IUserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    invoke-direct {p0}, Landroid/content/IClipboard$Stub;-><init>()V

    .line 83
    const/4 v3, 0x0

    iput-object v3, p0, mPersonaManager:Landroid/os/PersonaManager;

    .line 104
    const/16 v3, 0x66

    iput v3, p0, GOOD_CATEGORY:I

    .line 105
    const/16 v3, 0xc9

    iput v3, p0, GENERIC_CATEGORY_START:I

    .line 106
    const/16 v3, 0x1f4

    iput v3, p0, GENERIC_CATEGORY_END:I

    .line 131
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, mClipboards:Landroid/util/SparseArray;

    .line 137
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 138
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iput-object v3, p0, mAm:Landroid/app/IActivityManager;

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, mPm:Landroid/content/pm/PackageManager;

    .line 140
    const-string/jumbo v3, "user"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v3, Landroid/os/IUserManager;

    iput-object v3, p0, mUm:Landroid/os/IUserManager;

    .line 141
    const-string v3, "appops"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, p0, mAppOps:Landroid/app/AppOpsManager;

    .line 142
    const/4 v1, 0x0

    .line 144
    .local v1, "permOwner":Landroid/os/IBinder;
    :try_start_3d
    iget-object v3, p0, mAm:Landroid/app/IActivityManager;

    const-string v4, "clipboard"

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_44} :catch_5f

    move-result-object v1

    .line 148
    :goto_45
    iput-object v1, p0, mPermissionOwner:Landroid/os/IBinder;

    .line 151
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 152
    .local v2, "userFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    iget-object v3, p0, mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/clipboard/ClipboardService$1;

    invoke-direct {v4, p0}, Lcom/android/server/clipboard/ClipboardService$1;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    const/4 v3, 0x0

    iput v3, p0, mContainerID:I

    .line 167
    return-void

    .line 145
    .end local v2    # "userFilter":Landroid/content/IntentFilter;
    :catch_5f
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "clipboard"

    const-string v4, "AM dead"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_45
.end method

.method static synthetic access$000(Lcom/android/server/clipboard/ClipboardService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/clipboard/ClipboardService;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, removeClipboard(I)V

    return-void
.end method

.method private final addActiveOwnerLocked(ILjava/lang/String;)V
    .registers 15
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 659
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    .line 660
    .local v7, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    .line 661
    .local v8, "targetUserHandle":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 663
    .local v4, "oldIdentity":J
    const/4 v9, 0x0

    :try_start_d
    invoke-interface {v7, p2, v9, v8}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 664
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    if-nez v6, :cond_82

    .line 665
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2c} :catch_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_af

    .line 671
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    :catch_2c
    move-exception v9

    .line 674
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 676
    :goto_30
    invoke-direct {p0}, getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v1

    .line 680
    .local v1, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    invoke-virtual {p0}, getPersonaId()I

    move-result v9

    invoke-direct {p0, v9}, isClipboardShareAllowed(I)I

    move-result v3

    .line 681
    .local v3, "isClipboardShareAllowed":I
    const/4 v9, -0x1

    if-eq v3, v9, :cond_bf

    .line 682
    if-nez v3, :cond_be

    .line 683
    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_be

    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v9, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_be

    .line 684
    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ClipData;

    invoke-virtual {v9}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 685
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_66
    if-ge v2, v0, :cond_b9

    .line 686
    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ClipData;

    invoke-virtual {v9, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-direct {p0, v9, p2, v10}, grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;I)V

    .line 685
    add-int/lit8 v2, v2, 0x1

    goto :goto_66

    .line 667
    .end local v0    # "N":I
    .end local v1    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .end local v2    # "i":I
    .end local v3    # "isClipboardShareAllowed":I
    .restart local v6    # "pi":Landroid/content/pm/PackageInfo;
    :cond_82
    :try_start_82
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v9

    if-nez v9, :cond_b4

    .line 668
    new-instance v9, Ljava/lang/SecurityException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Calling uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " does not own package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_af
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_af} :catch_2c
    .catchall {:try_start_82 .. :try_end_af} :catchall_af

    .line 674
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    :catchall_af
    move-exception v9

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .restart local v6    # "pi":Landroid/content/pm/PackageInfo;
    :cond_b4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_30

    .line 688
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v0    # "N":I
    .restart local v1    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .restart local v2    # "i":I
    .restart local v3    # "isClipboardShareAllowed":I
    :cond_b9
    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v9, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 703
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_be
    :goto_be
    return-void

    .line 696
    :cond_bf
    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v9, :cond_be

    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v9, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_be

    .line 697
    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v9}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 698
    .restart local v0    # "N":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_d2
    if-ge v2, v0, :cond_e4

    .line 699
    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v9, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-direct {p0, v9, p2, v10}, grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;I)V

    .line 698
    add-int/lit8 v2, v2, 0x1

    goto :goto_d2

    .line 701
    :cond_e4
    iget-object v9, v1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v9, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_be
.end method

.method private final checkDataOwnerLocked(Landroid/content/ClipData;I)V
    .registers 6
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "uid"    # I

    .prologue
    .line 629
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 630
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 631
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-direct {p0, v2, p2}, checkItemOwnerLocked(Landroid/content/ClipData$Item;I)V

    .line 630
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 633
    :cond_11
    return-void
.end method

.method private final checkItemOwnerLocked(Landroid/content/ClipData$Item;I)V
    .registers 5
    .param p1, "item"    # Landroid/content/ClipData$Item;
    .param p2, "uid"    # I

    .prologue
    .line 619
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 620
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, checkUriOwnerLocked(Landroid/net/Uri;I)V

    .line 622
    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 623
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 624
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, checkUriOwnerLocked(Landroid/net/Uri;I)V

    .line 626
    :cond_20
    return-void
.end method

.method private final checkUriOwnerLocked(Landroid/net/Uri;I)V
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "uid"    # I

    .prologue
    .line 603
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 616
    :goto_c
    return-void

    .line 606
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 609
    .local v6, "ident":J
    :try_start_11
    iget-object v0, p0, mAm:Landroid/app/IActivityManager;

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v5

    move v1, p2

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_25} :catch_29
    .catchall {:try_start_11 .. :try_end_25} :catchall_2e

    .line 614
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c

    .line 612
    :catch_29
    move-exception v0

    .line 614
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c

    :catchall_2e
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .registers 2

    .prologue
    .line 183
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, v0}, getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 186
    :goto_f
    return-object v0

    :cond_10
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    goto :goto_f
.end method

.method private getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 191
    iget-object v2, p0, mClipboards:Landroid/util/SparseArray;

    monitor-enter v2

    .line 192
    :try_start_3
    iget-object v1, p0, mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    .line 193
    .local v0, "puc":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    if-nez v0, :cond_17

    .line 194
    new-instance v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    .end local v0    # "puc":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    invoke-direct {v0, p0, p1}, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;-><init>(Lcom/android/server/clipboard/ClipboardService;I)V

    .line 195
    .restart local v0    # "puc":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    iget-object v1, p0, mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 197
    :cond_17
    monitor-exit v2

    return-object v0

    .line 198
    .end local v0    # "puc":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private getPersonaManager()Z
    .registers 3

    .prologue
    .line 882
    iget-object v0, p0, mContext:Landroid/content/Context;

    if-eqz v0, :cond_15

    iget-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    if-nez v0, :cond_15

    .line 883
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    .line 886
    :cond_15
    iget-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    if-eqz v0, :cond_1b

    .line 887
    const/4 v0, 0x1

    .line 890
    :goto_1a
    return v0

    .line 889
    :cond_1b
    const-string v0, "ClipboardService"

    const-string/jumbo v1, "personaManager is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private getSEAMSCategory(Ljava/lang/String;)I
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 756
    const/4 v4, 0x0

    .line 757
    .local v4, "pm":Landroid/content/pm/IPackageManager;
    const/4 v1, -0x1

    .line 758
    .local v1, "category":I
    iget-object v6, p0, mContext:Landroid/content/Context;

    if-eqz v6, :cond_36

    .line 759
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 764
    const/4 v0, 0x0

    .line 765
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v5, 0x0

    .line 766
    .local v5, "seinfo":Ljava/lang/String;
    if-eqz v4, :cond_1a

    if-eqz p1, :cond_1a

    .line 768
    const/16 v6, 0x80

    :try_start_12
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-interface {v4, p1, v6, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_3f

    move-result-object v0

    .line 773
    :cond_1a
    :goto_1a
    if-nez v0, :cond_44

    .line 774
    const-string v6, "ClipboardService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "appInfo is null for packageName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    move v2, v1

    .line 784
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "category":I
    .end local v5    # "seinfo":Ljava/lang/String;
    .local v2, "category":I
    :goto_35
    return v2

    .line 761
    .end local v2    # "category":I
    .restart local v1    # "category":I
    :cond_36
    const-string v6, "ClipboardService"

    const-string v7, "Cannot get context for package manager"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 762
    .end local v1    # "category":I
    .restart local v2    # "category":I
    goto :goto_35

    .line 769
    .end local v2    # "category":I
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "category":I
    .restart local v5    # "seinfo":Ljava/lang/String;
    :catch_3f
    move-exception v3

    .line 770
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a

    .line 776
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_44
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 777
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 778
    const-string v6, "ClipboardService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSEAMSCategory, before checking range, category: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", seinfo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget v6, p0, GOOD_CATEGORY:I

    if-eq v1, v6, :cond_73

    iget v6, p0, GENERIC_CATEGORY_START:I

    if-lt v1, v6, :cond_77

    :cond_73
    iget v6, p0, GENERIC_CATEGORY_END:I

    if-le v1, v6, :cond_78

    .line 780
    :cond_77
    const/4 v1, 0x0

    .line 782
    :cond_78
    const-string v6, "ClipboardService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSEAMSCategory, category: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", seinfo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method private final grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;I)V
    .registers 6
    .param p1, "item"    # Landroid/content/ClipData$Item;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 649
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 650
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, grantUriLocked(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 652
    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 653
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 654
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, grantUriLocked(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 656
    :cond_20
    return-void
.end method

.method private final grantUriLocked(Landroid/net/Uri;Ljava/lang/String;I)V
    .registers 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 636
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 638
    .local v8, "ident":J
    :try_start_4
    invoke-static {p1, p3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v6

    .line 639
    .local v6, "sourceUserId":I
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 640
    iget-object v0, p0, mAm:Landroid/app/IActivityManager;

    iget-object v1, p0, mPermissionOwner:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/4 v5, 0x1

    move-object v3, p2

    move-object v4, p1

    move v7, p3

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1b} :catch_1f
    .catchall {:try_start_4 .. :try_end_1b} :catchall_24

    .line 644
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 646
    .end local v6    # "sourceUserId":I
    :goto_1e
    return-void

    .line 642
    :catch_1f
    move-exception v0

    .line 644
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    :catchall_24
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private isClipboardAllowed(ZI)I
    .registers 13
    .param p1, "showToast"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 823
    iget-object v0, p0, mContext:Landroid/content/Context;

    if-nez v0, :cond_a

    move v0, v7

    .line 842
    :goto_9
    return v0

    .line 827
    :cond_a
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 828
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 829
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isClipboardAllowedAsUser"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 830
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_55

    .line 832
    :try_start_2f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 833
    const-string/jumbo v0, "isClipboardAllowedAsUser"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_43
    .catchall {:try_start_2f .. :try_end_43} :catchall_50

    move-result v0

    if-nez v0, :cond_4b

    .line 837
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_9

    :cond_4b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 842
    goto :goto_9

    .line 837
    :catchall_50
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_55
    move v0, v7

    .line 840
    goto :goto_9
.end method

.method private isClipboardShareAllowed(I)I
    .registers 12
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 849
    iget-object v0, p0, mContext:Landroid/content/Context;

    if-nez v0, :cond_a

    move v0, v7

    .line 868
    :goto_9
    return v0

    .line 853
    :cond_a
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 854
    .local v1, "uri":Landroid/net/Uri;
    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 855
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isClipboardShareAllowedAsUser"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 856
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_4e

    .line 858
    :try_start_28
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 859
    const-string/jumbo v0, "isClipboardShareAllowedAsUser"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3c
    .catchall {:try_start_28 .. :try_end_3c} :catchall_49

    move-result v0

    if-nez v0, :cond_44

    .line 863
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_9

    :cond_44
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 868
    goto :goto_9

    .line 863
    :catchall_49
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4e
    move v0, v7

    .line 866
    goto :goto_9
.end method

.method private isSEContainerClipboardEnabled(I)I
    .registers 12
    .param p1, "category"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 788
    iget-object v0, p0, mContext:Landroid/content/Context;

    if-nez v0, :cond_a

    move v0, v7

    .line 808
    :goto_9
    return v0

    .line 791
    :cond_a
    const-string v0, "content://com.sec.knox.provider/SeamsPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 792
    .local v1, "uri":Landroid/net/Uri;
    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 793
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "getSEContainerClipboardMode"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 794
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_6d

    .line 796
    :try_start_28
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 797
    const-string/jumbo v0, "getSEContainerClipboardMode"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3c
    .catchall {:try_start_28 .. :try_end_3c} :catchall_68

    move-result v0

    if-nez v0, :cond_44

    .line 801
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_9

    :cond_44
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 807
    const-string v0, "ClipboardService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSEContainerClipboardEnabled for secontainerid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 808
    goto :goto_9

    .line 801
    :catchall_68
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 804
    :cond_6d
    const-string v0, "ClipboardService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSEContainerClipboardEnabled for secontainerid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is -1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 805
    goto/16 :goto_9
.end method

.method private removeClipboard(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 202
    iget-object v1, p0, mClipboards:Landroid/util/SparseArray;

    monitor-enter v1

    .line 203
    :try_start_3
    iget-object v0, p0, mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 204
    monitor-exit v1

    .line 205
    return-void

    .line 204
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private final revokeItemLocked(Landroid/content/ClipData$Item;)V
    .registers 4
    .param p1, "item"    # Landroid/content/ClipData$Item;

    .prologue
    .line 718
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 719
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, revokeUriLocked(Landroid/net/Uri;)V

    .line 721
    :cond_d
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 722
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 723
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, revokeUriLocked(Landroid/net/Uri;)V

    .line 725
    :cond_20
    return-void
.end method

.method private final revokeUriLocked(Landroid/net/Uri;)V
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 706
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {p1, v3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v2

    .line 707
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 709
    .local v0, "ident":J
    :try_start_10
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 710
    iget-object v3, p0, mAm:Landroid/app/IActivityManager;

    iget-object v4, p0, mPermissionOwner:Landroid/os/IBinder;

    const/4 v5, 0x3

    invoke-interface {v3, v4, p1, v5, v2}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1c} :catch_20
    .catchall {:try_start_10 .. :try_end_1c} :catchall_25

    .line 713
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 715
    :goto_1f
    return-void

    .line 711
    :catch_20
    move-exception v3

    .line 713
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1f

    :catchall_25
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private final revokeUris(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V
    .registers 5
    .param p1, "clipboard"    # Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    .prologue
    .line 728
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v2, :cond_5

    .line 735
    :cond_4
    return-void

    .line 731
    :cond_5
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 732
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_4

    .line 733
    iget-object v2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-direct {p0, v2}, revokeItemLocked(Landroid/content/ClipData$Item;)V

    .line 732
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method


# virtual methods
.method public UpdateClipboardDB(I)V
    .registers 3
    .param p1, "format"    # I

    .prologue
    .line 814
    iget v0, p0, mContainerID:I

    if-eq v0, p1, :cond_6

    .line 815
    iput p1, p0, mContainerID:I

    .line 817
    :cond_6
    return-void
.end method

.method public addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;)V
    .registers 6
    .param p1, "listener"    # Landroid/content/IOnPrimaryClipChangedListener;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 525
    monitor-enter p0

    .line 528
    :try_start_1
    iget v0, p0, mContainerID:I

    if-eqz v0, :cond_19

    .line 529
    invoke-direct {p0}, getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, p0, v2, p2}, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;-><init>(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 530
    monitor-exit p0

    .line 536
    :goto_18
    return-void

    .line 533
    :cond_19
    invoke-direct {p0}, getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, p0, v2, p2}, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;-><init>(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 535
    monitor-exit p0

    goto :goto_18

    :catchall_2d
    move-exception v0

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public getPersonaId()I
    .registers 3

    .prologue
    .line 872
    const/4 v0, 0x0

    .line 873
    .local v0, "userId":I
    invoke-direct {p0}, getPersonaManager()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 874
    iget-object v1, p0, mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v1}, Landroid/os/PersonaManager;->getFocusedUser()I

    move-result v0

    .line 878
    :goto_d
    return v0

    .line 876
    :cond_e
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    goto :goto_d
.end method

.method public getPrimaryClip(Ljava/lang/String;)Landroid/content/ClipData;
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 366
    monitor-enter p0

    .line 368
    const/4 v4, 0x1

    :try_start_3
    invoke-virtual {p0}, getPersonaId()I

    move-result v5

    invoke-direct {p0, v4, v5}, isClipboardAllowed(ZI)I

    move-result v1

    .line 369
    .local v1, "isClipboardAllowed":I
    if-nez v1, :cond_26

    .line 370
    invoke-direct {p0}, getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v4

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 371
    invoke-direct {p0}, getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v4

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 372
    invoke-direct {p0}, getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 373
    monitor-exit p0

    .line 425
    :goto_25
    return-object v3

    .line 376
    :cond_26
    invoke-virtual {p0}, getPersonaId()I

    move-result v4

    invoke-direct {p0, v4}, isClipboardShareAllowed(I)I

    move-result v2

    .line 395
    .local v2, "isClipboardShareAllowed":I
    if-eqz v2, :cond_53

    .line 396
    invoke-direct {p0}, getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 404
    :goto_39
    iget-object v4, p0, mAppOps:Landroid/app/AppOpsManager;

    const/16 v5, 0x1d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v5, v6, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_62

    .line 405
    const-string v4, "ClipboardService"

    const-string v5, "MODE_ALLOWED is false return!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    monitor-exit p0

    goto :goto_25

    .line 426
    .end local v1    # "isClipboardAllowed":I
    .end local v2    # "isClipboardShareAllowed":I
    :catchall_50
    move-exception v3

    monitor-exit p0
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_50

    throw v3

    .line 398
    .restart local v1    # "isClipboardAllowed":I
    .restart local v2    # "isClipboardShareAllowed":I
    :cond_53
    :try_start_53
    invoke-direct {p0}, getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v4

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 399
    invoke-direct {p0}, getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v4

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    goto :goto_39

    .line 408
    :cond_62
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v3, p1}, addActiveOwnerLocked(ILjava/lang/String;)V

    .line 412
    invoke-virtual {p0}, getPersonaId()I

    move-result v3

    invoke-direct {p0, v3}, isClipboardShareAllowed(I)I

    move-result v2

    .line 413
    if-nez v2, :cond_89

    .line 414
    invoke-direct {p0}, getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipData;

    monitor-exit p0

    goto :goto_25

    .line 417
    :cond_89
    iget v3, p0, mContainerID:I

    if-eqz v3, :cond_9d

    .line 418
    const-string v3, "ClipboardService"

    const-string/jumbo v4, "getPrimaryClip knox return!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-direct {p0}, getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    monitor-exit p0

    goto :goto_25

    .line 423
    :cond_9d
    invoke-direct {p0}, getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v3

    iget-object v0, v3, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 424
    .local v0, "data":Landroid/content/ClipData;
    const-string v4, "ClipboardService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPrimaryClip : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-lez v3, :cond_dd

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    :goto_ce
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    monitor-exit p0

    move-object v3, v0

    goto/16 :goto_25

    .line 424
    :cond_dd
    const-string/jumbo v3, "null"
    :try_end_e0
    .catchall {:try_start_53 .. :try_end_e0} :catchall_50

    goto :goto_ce
.end method

.method public getPrimaryClipDescription(Ljava/lang/String;)Landroid/content/ClipDescription;
    .registers 10
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 430
    monitor-enter p0

    .line 431
    :try_start_2
    iget-object v5, p0, mAppOps:Landroid/app/AppOpsManager;

    const/16 v6, 0x1d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v5, v6, v7, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_12

    .line 432
    monitor-exit p0

    .line 466
    :goto_11
    return-object v4

    .line 434
    :cond_12
    invoke-direct {p0}, getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 438
    .local v0, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    const/4 v5, 0x0

    invoke-virtual {p0}, getPersonaId()I

    move-result v6

    invoke-direct {p0, v5, v6}, isClipboardAllowed(ZI)I

    move-result v1

    .line 439
    .local v1, "isClipboardAllowed":I
    invoke-virtual {p0}, getPersonaId()I

    move-result v5

    invoke-direct {p0, v5}, isClipboardShareAllowed(I)I

    move-result v2

    .line 440
    .local v2, "isClipboardShareAllowed":I
    if-nez v1, :cond_39

    .line 441
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 442
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 443
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 444
    monitor-exit p0

    goto :goto_11

    .line 467
    .end local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .end local v1    # "isClipboardAllowed":I
    .end local v2    # "isClipboardShareAllowed":I
    :catchall_36
    move-exception v4

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_2 .. :try_end_38} :catchall_36

    throw v4

    .line 447
    .restart local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .restart local v1    # "isClipboardAllowed":I
    .restart local v2    # "isClipboardShareAllowed":I
    :cond_39
    if-eqz v2, :cond_50

    .line 448
    :try_start_3b
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 460
    iget v5, p0, mContainerID:I

    if-eqz v5, :cond_7a

    .line 461
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    if-eqz v5, :cond_4e

    iget-object v4, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    invoke-virtual {v4}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v4

    :cond_4e
    monitor-exit p0

    goto :goto_11

    .line 450
    :cond_50
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 451
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 453
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 454
    .local v3, "uid":I
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_68

    .line 455
    monitor-exit p0

    goto :goto_11

    .line 457
    :cond_68
    iget-object v4, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ClipData;

    invoke-virtual {v4}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v4

    monitor-exit p0

    goto :goto_11

    .line 466
    .end local v3    # "uid":I
    :cond_7a
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v5, :cond_84

    iget-object v4, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v4}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v4

    :cond_84
    monitor-exit p0
    :try_end_85
    .catchall {:try_start_3b .. :try_end_85} :catchall_36

    goto :goto_11
.end method

.method getRelatedProfiles(I)Ljava/util/List;
    .registers 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 320
    .local v2, "origId":J
    :try_start_4
    iget-object v4, p0, mUm:Landroid/os/IUserManager;

    const/4 v5, 0x1

    invoke-interface {v4, p1, v5}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_f
    .catchall {:try_start_4 .. :try_end_a} :catchall_2d

    move-result-object v1

    .line 325
    .local v1, "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 327
    .end local v1    # "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_e
    return-object v1

    .line 321
    :catch_f
    move-exception v0

    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_10
    const-string v4, "ClipboardService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote Exception calling UserManager: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_2d

    .line 323
    const/4 v1, 0x0

    .line 325
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_e

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_2d
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public hasClipboardText(Ljava/lang/String;)Z
    .registers 12
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 553
    monitor-enter p0

    .line 554
    :try_start_3
    iget-object v5, p0, mAppOps:Landroid/app/AppOpsManager;

    const/16 v8, 0x1d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v5, v8, v9, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_14

    .line 556
    monitor-exit p0

    move v5, v6

    .line 598
    :goto_13
    return v5

    .line 558
    :cond_14
    invoke-direct {p0}, getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 562
    .local v0, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    const/4 v5, 0x0

    invoke-virtual {p0}, getPersonaId()I

    move-result v8

    invoke-direct {p0, v5, v8}, isClipboardAllowed(ZI)I

    move-result v1

    .line 563
    .local v1, "isClipboardAllowed":I
    invoke-virtual {p0}, getPersonaId()I

    move-result v5

    invoke-direct {p0, v5}, isClipboardShareAllowed(I)I

    move-result v2

    .line 564
    .local v2, "isClipboardShareAllowed":I
    if-nez v1, :cond_39

    .line 565
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 566
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 567
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 568
    monitor-exit p0

    move v5, v6

    goto :goto_13

    .line 571
    :cond_39
    if-eqz v2, :cond_61

    .line 572
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 585
    iget v5, p0, mContainerID:I

    if-eqz v5, :cond_a0

    .line 586
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    if-eqz v5, :cond_a0

    .line 587
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 588
    .local v3, "text":Ljava/lang/CharSequence;
    if-eqz v3, :cond_9e

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_9e

    move v5, v7

    :goto_5c
    monitor-exit p0

    goto :goto_13

    .line 599
    .end local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .end local v1    # "isClipboardAllowed":I
    .end local v2    # "isClipboardShareAllowed":I
    .end local v3    # "text":Ljava/lang/CharSequence;
    :catchall_5e
    move-exception v5

    monitor-exit p0
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_5e

    throw v5

    .line 574
    .restart local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .restart local v1    # "isClipboardAllowed":I
    .restart local v2    # "isClipboardShareAllowed":I
    :cond_61
    const/4 v5, 0x0

    :try_start_62
    iput-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 575
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 577
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 578
    .local v4, "uid":I
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_9a

    .line 579
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ClipData;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 580
    .restart local v3    # "text":Ljava/lang/CharSequence;
    if-eqz v3, :cond_98

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_98

    move v5, v7

    :goto_95
    monitor-exit p0

    goto/16 :goto_13

    :cond_98
    move v5, v6

    goto :goto_95

    .line 582
    .end local v3    # "text":Ljava/lang/CharSequence;
    :cond_9a
    monitor-exit p0

    move v5, v6

    goto/16 :goto_13

    .end local v4    # "uid":I
    .restart local v3    # "text":Ljava/lang/CharSequence;
    :cond_9e
    move v5, v6

    .line 588
    goto :goto_5c

    .line 594
    .end local v3    # "text":Ljava/lang/CharSequence;
    :cond_a0
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v5, :cond_bd

    .line 595
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 596
    .restart local v3    # "text":Ljava/lang/CharSequence;
    if-eqz v3, :cond_bb

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_bb

    move v5, v7

    :goto_b8
    monitor-exit p0

    goto/16 :goto_13

    :cond_bb
    move v5, v6

    goto :goto_b8

    .line 598
    .end local v3    # "text":Ljava/lang/CharSequence;
    :cond_bd
    monitor-exit p0
    :try_end_be
    .catchall {:try_start_62 .. :try_end_be} :catchall_5e

    move v5, v6

    goto/16 :goto_13
.end method

.method public hasPrimaryClip(Ljava/lang/String;)Z
    .registers 10
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 471
    monitor-enter p0

    .line 487
    :try_start_3
    invoke-direct {p0}, getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 488
    .local v0, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    const/4 v5, 0x0

    invoke-virtual {p0}, getPersonaId()I

    move-result v6

    invoke-direct {p0, v5, v6}, isClipboardAllowed(ZI)I

    move-result v1

    .line 489
    .local v1, "isClipboardAllowed":I
    invoke-virtual {p0}, getPersonaId()I

    move-result v5

    invoke-direct {p0, v5}, isClipboardShareAllowed(I)I

    move-result v2

    .line 490
    .local v2, "isClipboardShareAllowed":I
    if-nez v1, :cond_27

    .line 491
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 492
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 493
    iget-object v4, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 494
    monitor-exit p0

    .line 519
    :goto_26
    return v3

    .line 497
    :cond_27
    if-eqz v2, :cond_41

    .line 498
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 507
    iget-object v5, p0, mAppOps:Landroid/app/AppOpsManager;

    const/16 v6, 0x1d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v5, v6, v7, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_5a

    .line 508
    monitor-exit p0

    goto :goto_26

    .line 520
    .end local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .end local v1    # "isClipboardAllowed":I
    .end local v2    # "isClipboardShareAllowed":I
    :catchall_3e
    move-exception v3

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v3

    .line 500
    .restart local v0    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .restart local v1    # "isClipboardAllowed":I
    .restart local v2    # "isClipboardShareAllowed":I
    :cond_41
    const/4 v5, 0x0

    :try_start_42
    iput-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 501
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 502
    iget-object v5, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_58

    move v3, v4

    :cond_58
    monitor-exit p0

    goto :goto_26

    .line 513
    :cond_5a
    iget v5, p0, mContainerID:I

    if-eqz v5, :cond_69

    .line 514
    invoke-direct {p0}, getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    if-eqz v5, :cond_67

    move v3, v4

    :cond_67
    monitor-exit p0

    goto :goto_26

    .line 519
    :cond_69
    invoke-direct {p0}, getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v5, :cond_72

    move v3, v4

    :cond_72
    monitor-exit p0
    :try_end_73
    .catchall {:try_start_42 .. :try_end_73} :catchall_3e

    goto :goto_26
.end method

.method public isSEContainerAndIsolated(Ljava/lang/String;)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 740
    invoke-virtual {p0}, getPersonaId()I

    move-result v5

    if-nez v5, :cond_3a

    .line 741
    invoke-direct {p0, p1}, getSEAMSCategory(Ljava/lang/String;)I

    move-result v0

    .line 742
    .local v0, "cat":I
    if-lez v0, :cond_3a

    .line 743
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 744
    .local v2, "ident":J
    invoke-direct {p0, v0}, isSEContainerClipboardEnabled(I)I

    move-result v1

    .line 745
    .local v1, "status":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 746
    if-ne v1, v4, :cond_3a

    .line 747
    const-string v5, "ClipboardService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isSEContainerAndIsolated, isSEContainerClipboardEnabled returned 1 for cat: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", return"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    .end local v0    # "cat":I
    .end local v1    # "status":I
    .end local v2    # "ident":J
    :goto_39
    return v4

    :cond_3a
    const/4 v4, 0x0

    goto :goto_39
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 173
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IClipboard$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    .line 174
    :catch_5
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 176
    const-string v1, "clipboard"

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    :cond_11
    throw v0
.end method

.method public removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/content/IOnPrimaryClipChangedListener;

    .prologue
    .line 539
    monitor-enter p0

    .line 542
    :try_start_1
    iget v0, p0, mContainerID:I

    if-eqz v0, :cond_10

    .line 543
    invoke-direct {p0}, getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 544
    monitor-exit p0

    .line 550
    :goto_f
    return-void

    .line 547
    :cond_10
    invoke-direct {p0}, getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 549
    monitor-exit p0

    goto :goto_f

    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V
    .registers 21
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 208
    monitor-enter p0

    .line 211
    :try_start_1
    invoke-direct/range {p0 .. p0}, getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v4

    .line 212
    .local v4, "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, getPersonaId()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, isClipboardAllowed(ZI)I

    move-result v8

    .line 213
    .local v8, "isClipboardAllowed":I
    if-nez v8, :cond_21

    .line 214
    const/4 v15, 0x0

    iput-object v15, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 215
    const/4 v15, 0x0

    iput-object v15, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 216
    iget-object v15, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->clear()V

    .line 217
    monitor-exit p0

    .line 314
    :goto_20
    return-void

    .line 220
    :cond_21
    invoke-virtual/range {p0 .. p0}, getPersonaId()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, isClipboardShareAllowed(I)I

    move-result v9

    .line 221
    .local v9, "isClipboardShareAllowed":I
    if-nez v9, :cond_42

    .line 222
    const/4 v15, 0x0

    iput-object v15, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 223
    const/4 v15, 0x0

    iput-object v15, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 227
    :goto_33
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, isSEContainerAndIsolated(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_48

    .line 228
    monitor-exit p0

    goto :goto_20

    .line 313
    .end local v4    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .end local v8    # "isClipboardAllowed":I
    .end local v9    # "isClipboardShareAllowed":I
    :catchall_3f
    move-exception v15

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_3f

    throw v15

    .line 225
    .restart local v4    # "clipboard":Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .restart local v8    # "isClipboardAllowed":I
    .restart local v9    # "isClipboardShareAllowed":I
    :cond_42
    :try_start_42
    iget-object v15, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->clear()V

    goto :goto_33

    .line 233
    :cond_48
    if-eqz p1, :cond_58

    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v15

    if-gtz v15, :cond_58

    .line 234
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "No items"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 236
    :cond_58
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 237
    .local v2, "callingUid":I
    move-object/from16 v0, p0

    iget-object v15, v0, mAppOps:Landroid/app/AppOpsManager;

    const/16 v16, 0x1e

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v15, v0, v2, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_6e

    .line 239
    monitor-exit p0

    goto :goto_20

    .line 241
    :cond_6e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, checkDataOwnerLocked(Landroid/content/ClipData;I)V

    .line 258
    invoke-direct/range {p0 .. p0}, getClipboard()Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v4

    .line 259
    invoke-virtual/range {p0 .. p0}, getPersonaId()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, isClipboardShareAllowed(I)I

    move-result v15

    if-nez v15, :cond_9b

    .line 260
    iget-object v15, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ClipData;

    .line 262
    .local v12, "ret":Landroid/content/ClipData;
    monitor-exit p0

    goto :goto_20

    .line 264
    .end local v12    # "ret":Landroid/content/ClipData;
    :cond_9b
    move-object/from16 v0, p0

    iget v15, v0, mContainerID:I

    if-eqz v15, :cond_10b

    .line 265
    move-object/from16 v0, p1

    iput-object v0, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 273
    :goto_a5
    const/4 v14, -0x1

    .line 274
    .local v14, "userId":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    invoke-static {v15}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v15

    if-eqz v15, :cond_114

    .line 275
    const/4 v14, 0x0

    .line 280
    :goto_b1
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v4

    .line 281
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, revokeUris(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V

    .line 282
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v1}, setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;)V

    .line 283
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, getRelatedProfiles(I)Ljava/util/List;

    move-result-object v11

    .line 284
    .local v11, "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v11, :cond_14a

    .line 285
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    .line 286
    .local v13, "size":I
    const/4 v15, 0x1

    if-le v13, v15, :cond_14a

    .line 287
    const/4 v3, 0x0

    .line 288
    .local v3, "canCopy":Z
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    const-string/jumbo v16, "persona"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PersonaManager;

    .line 289
    .local v10, "pm":Landroid/os/PersonaManager;
    invoke-virtual {v10, v14}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v15

    if-eqz v15, :cond_119

    .line 290
    const/4 v3, 0x0

    .line 300
    :goto_e7
    if-eqz v3, :cond_14a

    .line 301
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/ClipData;->fixUrisLight(I)V

    .line 303
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_ef
    if-ge v6, v13, :cond_14a

    .line 304
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/UserInfo;

    iget v7, v15, Landroid/content/pm/UserInfo;->id:I

    .line 305
    .local v7, "id":I
    if-eq v7, v14, :cond_108

    .line 306
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, getClipboard(I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v15, v1}, setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;)V

    .line 303
    :cond_108
    add-int/lit8 v6, v6, 0x1

    goto :goto_ef

    .line 267
    .end local v3    # "canCopy":Z
    .end local v6    # "i":I
    .end local v7    # "id":I
    .end local v10    # "pm":Landroid/os/PersonaManager;
    .end local v11    # "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v13    # "size":I
    .end local v14    # "userId":I
    :cond_10b
    move-object/from16 v0, p1

    iput-object v0, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 268
    move-object/from16 v0, p1

    iput-object v0, v4, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    goto :goto_a5

    .line 277
    .restart local v14    # "userId":I
    :cond_114
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_117
    .catchall {:try_start_42 .. :try_end_117} :catchall_3f

    move-result v14

    goto :goto_b1

    .line 293
    .restart local v3    # "canCopy":Z
    .restart local v10    # "pm":Landroid/os/PersonaManager;
    .restart local v11    # "related":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v13    # "size":I
    :cond_119
    :try_start_119
    move-object/from16 v0, p0

    iget-object v15, v0, mUm:Landroid/os/IUserManager;

    invoke-interface {v15, v14}, Landroid/os/IUserManager;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v15

    const-string/jumbo v16, "no_cross_profile_copy_paste"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_127
    .catch Landroid/os/RemoteException; {:try_start_119 .. :try_end_127} :catch_12e
    .catchall {:try_start_119 .. :try_end_127} :catchall_3f

    move-result v15

    if-nez v15, :cond_12c

    const/4 v3, 0x1

    :goto_12b
    goto :goto_e7

    :cond_12c
    const/4 v3, 0x0

    goto :goto_12b

    .line 294
    :catch_12e
    move-exception v5

    .line 295
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_12f
    const-string v15, "ClipboardService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Remote Exception calling UserManager: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e7

    .line 313
    .end local v3    # "canCopy":Z
    .end local v5    # "e":Landroid/os/RemoteException;
    .end local v10    # "pm":Landroid/os/PersonaManager;
    .end local v13    # "size":I
    :cond_14a
    monitor-exit p0
    :try_end_14b
    .catchall {:try_start_12f .. :try_end_14b} :catchall_3f

    goto/16 :goto_20
.end method

.method setPrimaryClipInternal(Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Landroid/content/ClipData;)V
    .registers 13
    .param p1, "clipboard"    # Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;
    .param p2, "clip"    # Landroid/content/ClipData;

    .prologue
    .line 331
    iget-object v6, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 332
    if-nez p2, :cond_c

    iget-object v6, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v6, :cond_c

    .line 363
    :goto_b
    return-void

    .line 336
    :cond_c
    if-eqz p2, :cond_44

    .line 337
    invoke-virtual {p2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    .line 338
    .local v0, "description":Landroid/content/ClipDescription;
    if-eqz v0, :cond_7b

    .line 339
    const-string v7, "ClipboardService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPrimaryClipInternal : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->userId:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", type : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v6

    if-ltz v6, :cond_77

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v6

    :goto_39
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .end local v0    # "description":Landroid/content/ClipDescription;
    :cond_44
    :goto_44
    iput-object p2, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 345
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 346
    .local v2, "ident":J
    iget-object v6, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 348
    .local v5, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_51
    if-ge v1, v5, :cond_9d

    .line 350
    :try_start_53
    iget-object v6, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;

    .line 351
    .local v4, "li":Lcom/android/server/clipboard/ClipboardService$ListenerInfo;
    iget-object v6, p0, mAppOps:Landroid/app/AppOpsManager;

    const/16 v7, 0x1d

    iget v8, v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mUid:I

    iget-object v9, v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v6

    if-nez v6, :cond_74

    .line 352
    iget-object v6, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/content/IOnPrimaryClipChangedListener;

    invoke-interface {v6}, Landroid/content/IOnPrimaryClipChangedListener;->dispatchPrimaryClipChanged()V
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_74} :catch_b1
    .catchall {:try_start_53 .. :try_end_74} :catchall_a7

    .line 348
    .end local v4    # "li":Lcom/android/server/clipboard/ClipboardService$ListenerInfo;
    :cond_74
    :goto_74
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 339
    .end local v1    # "i":I
    .end local v2    # "ident":J
    .end local v5    # "n":I
    .restart local v0    # "description":Landroid/content/ClipDescription;
    :cond_77
    const-string/jumbo v6, "no mime type"

    goto :goto_39

    .line 341
    :cond_7b
    const-string v6, "ClipboardService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPrimaryClipInternal : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->userId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", description is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 360
    .end local v0    # "description":Landroid/content/ClipDescription;
    .restart local v1    # "i":I
    .restart local v2    # "ident":J
    .restart local v5    # "n":I
    :cond_9d
    iget-object v6, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 361
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_b

    .line 360
    :catchall_a7
    move-exception v6

    iget-object v7, p1, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 361
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 354
    :catch_b1
    move-exception v6

    goto :goto_74
.end method
