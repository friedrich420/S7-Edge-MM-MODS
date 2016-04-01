.class public Lcom/android/server/notification/ValidateNotificationPeople;
.super Ljava/lang/Object;
.source "ValidateNotificationPeople.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;,
        Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final ENABLE_PEOPLE_VALIDATOR:Z = true

.field private static final LOOKUP_PROJECTION:[Ljava/lang/String;

.field private static final MAX_PEOPLE:I = 0xa

.field static final NONE:F = 0.0f

.field private static final PEOPLE_CACHE_SIZE:I = 0xc8

.field private static final SETTING_ENABLE_PEOPLE_VALIDATOR:Ljava/lang/String; = "validate_notification_people_enabled"

.field static final STARRED_CONTACT:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "ValidateNoPeople"

.field static final VALID_CONTACT:F = 0.5f

.field private static final VERBOSE:Z


# instance fields
.field private mBaseContext:Landroid/content/Context;

.field protected mEnabled:Z

.field private mEvictionCount:I

.field private mHandler:Landroid/os/Handler;

.field private mObserver:Landroid/database/ContentObserver;

.field private mPeopleCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

.field private mUserToContextMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x2

    .line 53
    const-string v0, "ValidateNoPeople"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, VERBOSE:Z

    .line 54
    const-string v0, "ValidateNoPeople"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, DEBUG:Z

    .line 59
    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "starred"

    aput-object v2, v0, v1

    sput-object v0, LOOKUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 50
    sget-boolean v0, DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/notification/ValidateNotificationPeople;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ValidateNotificationPeople;

    .prologue
    .line 50
    iget v0, p0, mEvictionCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/notification/ValidateNotificationPeople;)Lcom/android/server/notification/NotificationUsageStats;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ValidateNotificationPeople;

    .prologue
    .line 50
    iget-object v0, p0, mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    return-object v0
.end method

.method static synthetic access$108(Lcom/android/server/notification/ValidateNotificationPeople;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/ValidateNotificationPeople;

    .prologue
    .line 50
    iget v0, p0, mEvictionCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, mEvictionCount:I

    return v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 50
    sget-boolean v0, VERBOSE:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/ValidateNotificationPeople;)Landroid/util/LruCache;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ValidateNotificationPeople;

    .prologue
    .line 50
    iget-object v0, p0, mPeopleCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, resolvePhoneContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, resolveEmailContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/net/Uri;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/notification/ValidateNotificationPeople;ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, getCacheKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCacheKey(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "handle"    # Ljava/lang/String;

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 7
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 190
    iget-object v2, p0, mUserToContextMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 191
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_28

    .line 193
    :try_start_12
    iget-object v2, p0, mBaseContext:Landroid/content/Context;

    const-string v3, "android"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 194
    iget-object v2, p0, mUserToContextMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_28} :catch_29

    .line 199
    :cond_28
    :goto_28
    return-object v0

    .line 195
    :catch_29
    move-exception v1

    .line 196
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "ValidateNoPeople"

    const-string/jumbo v3, "failed to create package context for lookups"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28
.end method

.method public static getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;
    .registers 12
    .param p0, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 269
    const-string v8, "android.people"

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 270
    .local v6, "people":Ljava/lang/Object;
    instance-of v8, v6, [Ljava/lang/String;

    if-eqz v8, :cond_13

    .line 271
    check-cast v6, [Ljava/lang/String;

    .end local v6    # "people":Ljava/lang/Object;
    check-cast v6, [Ljava/lang/String;

    move-object v1, v6

    .line 327
    :cond_12
    :goto_12
    return-object v1

    .line 274
    .restart local v6    # "people":Ljava/lang/Object;
    :cond_13
    instance-of v8, v6, Ljava/util/ArrayList;

    if-eqz v8, :cond_58

    move-object v2, v6

    .line 275
    check-cast v2, Ljava/util/ArrayList;

    .line 277
    .local v2, "arrayList":Ljava/util/ArrayList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_12

    .line 281
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/String;

    if-eqz v8, :cond_37

    .line 282
    move-object v7, v2

    .line 283
    .local v7, "stringArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    move-object v1, v8

    goto :goto_12

    .line 286
    .end local v7    # "stringArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_37
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/CharSequence;

    if-eqz v8, :cond_12

    .line 287
    move-object v4, v2

    .line 288
    .local v4, "charSeqList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 289
    .local v0, "N":I
    new-array v1, v0, [Ljava/lang/String;

    .line 290
    .local v1, "array":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_47
    if-ge v5, v0, :cond_12

    .line 291
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v5

    .line 290
    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    .line 299
    .end local v0    # "N":I
    .end local v1    # "array":[Ljava/lang/String;
    .end local v2    # "arrayList":Ljava/util/ArrayList;
    .end local v4    # "charSeqList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v5    # "i":I
    :cond_58
    instance-of v8, v6, Ljava/lang/String;

    if-eqz v8, :cond_63

    .line 300
    new-array v1, v10, [Ljava/lang/String;

    .line 301
    .restart local v1    # "array":[Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .end local v6    # "people":Ljava/lang/Object;
    aput-object v6, v1, v9

    goto :goto_12

    .line 305
    .end local v1    # "array":[Ljava/lang/String;
    .restart local v6    # "people":Ljava/lang/Object;
    :cond_63
    instance-of v8, v6, [C

    if-eqz v8, :cond_75

    .line 306
    new-array v1, v10, [Ljava/lang/String;

    .line 307
    .restart local v1    # "array":[Ljava/lang/String;
    new-instance v8, Ljava/lang/String;

    check-cast v6, [C

    .end local v6    # "people":Ljava/lang/Object;
    check-cast v6, [C

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>([C)V

    aput-object v8, v1, v9

    goto :goto_12

    .line 311
    .end local v1    # "array":[Ljava/lang/String;
    .restart local v6    # "people":Ljava/lang/Object;
    :cond_75
    instance-of v8, v6, Ljava/lang/CharSequence;

    if-eqz v8, :cond_84

    .line 312
    new-array v1, v10, [Ljava/lang/String;

    .line 313
    .restart local v1    # "array":[Ljava/lang/String;
    check-cast v6, Ljava/lang/CharSequence;

    .end local v6    # "people":Ljava/lang/Object;
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v9

    goto :goto_12

    .line 317
    .end local v1    # "array":[Ljava/lang/String;
    .restart local v6    # "people":Ljava/lang/Object;
    :cond_84
    instance-of v8, v6, [Ljava/lang/CharSequence;

    if-eqz v8, :cond_12

    .line 318
    check-cast v6, [Ljava/lang/CharSequence;

    .end local v6    # "people":Ljava/lang/Object;
    move-object v3, v6

    check-cast v3, [Ljava/lang/CharSequence;

    .line 319
    .local v3, "charSeqArray":[Ljava/lang/CharSequence;
    array-length v0, v3

    .line 320
    .restart local v0    # "N":I
    new-array v1, v0, [Ljava/lang/String;

    .line 321
    .restart local v1    # "array":[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_91
    if-ge v5, v0, :cond_12

    .line 322
    aget-object v8, v3, v5

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v5

    .line 321
    add-int/lit8 v5, v5, 0x1

    goto :goto_91
.end method

.method private resolveEmailContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "email"    # Ljava/lang/String;

    .prologue
    .line 337
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 340
    .local v0, "numberUri":Landroid/net/Uri;
    invoke-direct {p0, p1, v0}, searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v1

    return-object v1
.end method

.method private resolvePhoneContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 331
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 333
    .local v0, "phoneUri":Landroid/net/Uri;
    invoke-direct {p0, p1, v0}, searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v1

    return-object v1
.end method

.method private searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lookupUri"    # Landroid/net/Uri;

    .prologue
    .line 344
    new-instance v7, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    invoke-direct {v7}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;-><init>()V

    .line 345
    .local v7, "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    const/4 v6, 0x0

    .line 347
    .local v6, "c":Landroid/database/Cursor;
    :try_start_6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, LOOKUP_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 348
    if-nez v6, :cond_23

    .line 349
    const-string v0, "ValidateNoPeople"

    const-string v1, "Null cursor from contacts query."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1d} :catch_2d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_41

    .line 358
    if-eqz v6, :cond_22

    .line 359
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 362
    :cond_22
    :goto_22
    return-object v7

    .line 352
    :cond_23
    :goto_23
    :try_start_23
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 353
    invoke-virtual {v7, v6}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mergeContact(Landroid/database/Cursor;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_2c} :catch_2d
    .catchall {:try_start_23 .. :try_end_2c} :catchall_41

    goto :goto_23

    .line 355
    :catch_2d
    move-exception v8

    .line 356
    .local v8, "t":Ljava/lang/Throwable;
    :try_start_2e
    const-string v0, "ValidateNoPeople"

    const-string v1, "Problem getting content resolver or performing contacts query."

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_41

    .line 358
    if-eqz v6, :cond_22

    .line 359
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_22

    .line 358
    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_3b
    if-eqz v6, :cond_22

    .line 359
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_22

    .line 358
    :catchall_41
    move-exception v0

    if-eqz v6, :cond_47

    .line 359
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_47
    throw v0
.end method

.method private validatePeople(Landroid/content/Context;Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 204
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v2, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 206
    .local v2, "extras":Landroid/os/Bundle;
    new-array v1, v6, [F

    .line 207
    .local v1, "affinityOut":[F
    invoke-direct {p0, p1, v3, v2, v1}, validatePeople(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;[F)Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    move-result-object v4

    .line 208
    .local v4, "rr":Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;
    aget v0, v1, v5

    .line 209
    .local v0, "affinity":F
    invoke-virtual {p2, v0}, Lcom/android/server/notification/NotificationRecord;->setContactAffinity(F)V

    .line 210
    if-nez v4, :cond_2e

    .line 211
    iget-object v8, p0, mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    const/4 v7, 0x0

    cmpl-float v7, v0, v7

    if-lez v7, :cond_2c

    move v7, v6

    :goto_21
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v0, v9

    if-nez v9, :cond_28

    move v5, v6

    :cond_28
    invoke-virtual {v8, p2, v7, v5, v6}, Lcom/android/server/notification/NotificationUsageStats;->registerPeopleAffinity(Lcom/android/server/notification/NotificationRecord;ZZZ)V

    .line 216
    :goto_2b
    return-object v4

    :cond_2c
    move v7, v5

    .line 211
    goto :goto_21

    .line 214
    :cond_2e
    invoke-virtual {v4, p2}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->setRecord(Lcom/android/server/notification/NotificationRecord;)V

    goto :goto_2b
.end method

.method private validatePeople(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;[F)Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;
    .registers 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "affinityOut"    # [F

    .prologue
    .line 221
    const/4 v6, 0x0

    .line 222
    .local v6, "affinity":F
    if-nez p3, :cond_5

    .line 223
    const/4 v0, 0x0

    .line 260
    :goto_4
    return-object v0

    .line 226
    :cond_5
    invoke-static {p3}, getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v10

    .line 227
    .local v10, "people":[Ljava/lang/String;
    if-eqz v10, :cond_e

    array-length v0, v10

    if-nez v0, :cond_10

    .line 228
    :cond_e
    const/4 v0, 0x0

    goto :goto_4

    .line 231
    :cond_10
    sget-boolean v0, VERBOSE:Z

    if-eqz v0, :cond_3a

    const-string v0, "ValidateNoPeople"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Validating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_3a
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 233
    .local v4, "pendingLookups":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .local v11, "personIdx":I
    :goto_40
    array-length v0, v10

    if-ge v11, v0, :cond_8c

    const/16 v0, 0xa

    if-ge v11, v0, :cond_8c

    .line 234
    aget-object v8, v10, v11

    .line 235
    .local v8, "handle":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 233
    :goto_4f
    add-int/lit8 v11, v11, 0x1

    goto :goto_40

    .line 237
    :cond_52
    iget-object v1, p0, mPeopleCache:Landroid/util/LruCache;

    monitor-enter v1

    .line 238
    :try_start_55
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-direct {p0, v0, v8}, getCacheKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 239
    .local v7, "cacheKey":Ljava/lang/String;
    iget-object v0, p0, mPeopleCache:Landroid/util/LruCache;

    invoke-virtual {v0, v7}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    .line 240
    .local v9, "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    if-eqz v9, :cond_6d

    # invokes: Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->isExpired()Z
    invoke-static {v9}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->access$400(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 241
    :cond_6d
    invoke-virtual {v4, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_70
    :goto_70
    if-eqz v9, :cond_7a

    .line 246
    invoke-virtual {v9}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getAffinity()F

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 248
    :cond_7a
    monitor-exit v1

    goto :goto_4f

    .end local v7    # "cacheKey":Ljava/lang/String;
    .end local v9    # "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    :catchall_7c
    move-exception v0

    monitor-exit v1
    :try_end_7e
    .catchall {:try_start_55 .. :try_end_7e} :catchall_7c

    throw v0

    .line 243
    .restart local v7    # "cacheKey":Ljava/lang/String;
    .restart local v9    # "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    :cond_7f
    :try_start_7f
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_70

    const-string v0, "ValidateNoPeople"

    const-string/jumbo v2, "using cached lookupResult"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catchall {:try_start_7f .. :try_end_8b} :catchall_7c

    goto :goto_70

    .line 252
    .end local v7    # "cacheKey":Ljava/lang/String;
    .end local v8    # "handle":Ljava/lang/String;
    .end local v9    # "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    :cond_8c
    const/4 v0, 0x0

    aput v6, p4, v0

    .line 254
    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 255
    sget-boolean v0, VERBOSE:Z

    if-eqz v0, :cond_b2

    const-string v0, "ValidateNoPeople"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "final affinity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_b2
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 259
    :cond_b5
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_d1

    const-string v0, "ValidateNoPeople"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pending: future work scheduled for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_d1
    new-instance v0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedList;Lcom/android/server/notification/ValidateNotificationPeople$1;)V

    goto/16 :goto_4
.end method


# virtual methods
.method public getContactAffinity(Landroid/os/UserHandle;Landroid/os/Bundle;IF)F
    .registers 16
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "timeoutMs"    # I
    .param p4, "timeoutAffinity"    # F

    .prologue
    const/4 v10, 0x0

    const/4 v0, 0x0

    .line 149
    sget-boolean v7, DEBUG:Z

    if-eqz v7, :cond_1e

    const-string v7, "ValidateNoPeople"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checking affinity for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_1e
    if-nez p2, :cond_21

    .line 186
    :cond_20
    :goto_20
    return v0

    .line 151
    :cond_21
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, "key":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v1, v7, [F

    .line 153
    .local v1, "affinityOut":[F
    invoke-direct {p0, p1}, getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 154
    .local v2, "context":Landroid/content/Context;
    if-eqz v2, :cond_20

    .line 157
    invoke-direct {p0, v2, v4, p2, v1}, validatePeople(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;[F)Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    move-result-object v5

    .line 158
    .local v5, "prr":Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;
    aget v0, v1, v10

    .line 160
    .local v0, "affinity":F
    if-eqz v5, :cond_20

    .line 163
    new-instance v6, Ljava/util/concurrent/Semaphore;

    invoke-direct {v6, v10}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 164
    .local v6, "s":Ljava/util/concurrent/Semaphore;
    sget-object v7, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v8, Lcom/android/server/notification/ValidateNotificationPeople$2;

    invoke-direct {v8, p0, v5, v6}, Lcom/android/server/notification/ValidateNotificationPeople$2;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;Ljava/util/concurrent/Semaphore;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 173
    int-to-long v8, p3

    :try_start_4a
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v8, v9, v7}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v7

    if-nez v7, :cond_a7

    .line 174
    const-string v7, "ValidateNoPeople"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Timeout while waiting for affinity: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Returning timeoutAffinity="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_7a} :catch_7c

    move v0, p4

    .line 176
    goto :goto_20

    .line 178
    :catch_7c
    move-exception v3

    .line 179
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v7, "ValidateNoPeople"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "InterruptedException while waiting for affinity: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Returning affinity="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_20

    .line 184
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_a7
    invoke-virtual {v5}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->getContactAffinity()F

    move-result v7

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto/16 :goto_20
.end method

.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;

    .prologue
    const/4 v1, 0x1

    .line 90
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_2b

    const-string v0, "ValidateNoPeople"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_2b
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mUserToContextMap:Ljava/util/Map;

    .line 92
    iput-object p1, p0, mBaseContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 94
    new-instance v0, Landroid/util/LruCache;

    const/16 v2, 0xc8

    invoke-direct {v0, v2}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, mPeopleCache:Landroid/util/LruCache;

    .line 95
    iget-object v0, p0, mBaseContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "validate_notification_people_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v0, :cond_74

    move v0, v1

    :goto_4f
    iput-boolean v0, p0, mEnabled:Z

    .line 97
    iget-boolean v0, p0, mEnabled:Z

    if-eqz v0, :cond_73

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 99
    new-instance v0, Lcom/android/server/notification/ValidateNotificationPeople$1;

    iget-object v2, p0, mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/notification/ValidateNotificationPeople$1;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/os/Handler;)V

    iput-object v0, p0, mObserver:Landroid/database/ContentObserver;

    .line 110
    iget-object v0, p0, mBaseContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, mObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 113
    :cond_73
    return-void

    .line 95
    :cond_74
    const/4 v0, 0x0

    goto :goto_4f
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 6
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-boolean v2, p0, mEnabled:Z

    if-nez v2, :cond_12

    .line 117
    sget-boolean v2, VERBOSE:Z

    if-eqz v2, :cond_11

    const-string v2, "ValidateNoPeople"

    const-string/jumbo v3, "disabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_11
    :goto_11
    return-object v1

    .line 120
    :cond_12
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    if-nez v2, :cond_27

    .line 121
    :cond_1a
    sget-boolean v2, VERBOSE:Z

    if-eqz v2, :cond_11

    const-string v2, "ValidateNoPeople"

    const-string/jumbo v3, "skipping empty notification"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 124
    :cond_27
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3b

    .line 125
    sget-boolean v2, VERBOSE:Z

    if-eqz v2, :cond_11

    const-string v2, "ValidateNoPeople"

    const-string/jumbo v3, "skipping global notification"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 128
    :cond_3b
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {p0, v2}, getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 129
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_52

    .line 130
    sget-boolean v2, VERBOSE:Z

    if-eqz v2, :cond_11

    const-string v2, "ValidateNoPeople"

    const-string/jumbo v3, "skipping notification that lacks a context"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 133
    :cond_52
    invoke-direct {p0, v0, p1}, validatePeople(Landroid/content/Context;Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;

    move-result-object v1

    goto :goto_11
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .registers 2
    .param p1, "config"    # Lcom/android/server/notification/RankingConfig;

    .prologue
    .line 139
    return-void
.end method
