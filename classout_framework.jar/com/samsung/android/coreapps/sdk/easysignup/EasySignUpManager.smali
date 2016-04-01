.class public Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;
.super Ljava/lang/Object;
.source "EasySignUpManager.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup"

.field private static final AUTHORITY_PUBLIC:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup.public"

.field private static final BASE_CONTENT_URI:Landroid/net/Uri;

.field private static final BASE_CONTENT_URI_PUBLIC:Landroid/net/Uri;

.field public static final EASY_SIGNUP_ACCCOUNT_TYPE:Ljava/lang/String; = "com.samsung.android.coreapps"

.field public static final SERVICE_ID_CONTACT:I = 0x0

.field public static final SERVICE_ID_ESU:I = 0x4

.field public static final SERVICE_ID_FREE_MESSAGE:I = 0x1

.field public static final SERVICE_ID_RSHARE:I = 0x2

.field public static final SERVICE_ID_SHOP:I = 0x3

.field public static final SERVICE_OFF:I = 0x0

.field public static final SERVICE_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EasySignUpManager_1.0.5"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-string v0, "content://com.samsung.android.coreapps.easysignup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, BASE_CONTENT_URI:Landroid/net/Uri;

    .line 21
    const-string v0, "content://com.samsung.android.coreapps.easysignup.public"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, BASE_CONTENT_URI_PUBLIC:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToIntArray(Ljava/lang/String;)[I
    .registers 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 371
    const/4 v3, 0x0

    .line 373
    .local v3, "result":[I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3c

    const-string v4, "[]"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 374
    const-string v4, "\\["

    const-string v5, ""

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\]"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, "items":[Ljava/lang/String;
    array-length v4, v1

    new-array v3, v4, [I

    .line 378
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_29
    array-length v4, v1

    if-ge v0, v4, :cond_3c

    .line 380
    :try_start_2c
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_34} :catch_37

    .line 378
    :goto_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 381
    :catch_37
    move-exception v2

    .line 382
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_34

    .line 387
    .end local v0    # "i":I
    .end local v1    # "items":[Ljava/lang/String;
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :cond_3c
    return-object v3
.end method

.method public static getMsisdn(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 320
    const-string v0, "EasySignUpManager_1.0.5"

    const-string v2, "getMsisdn"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v7, 0x0

    .line 324
    .local v7, "msisdn":Ljava/lang/String;
    sget-object v0, BASE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "auth"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 326
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "msisdn"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 328
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_45

    :try_start_2e
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_45

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 329
    const-string/jumbo v0, "msisdn"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_44
    .catchall {:try_start_2e .. :try_end_44} :catchall_4b

    move-result-object v7

    .line 331
    :cond_45
    if-eqz v6, :cond_4a

    .line 332
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 336
    :cond_4a
    return-object v7

    .line 331
    :catchall_4b
    move-exception v0

    if-eqz v6, :cond_51

    .line 332
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_51
    throw v0
.end method

.method public static getMsisdn(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 346
    const-string v0, "EasySignUpManager_1.0.5"

    const-string v2, "getMsisdn with imsi"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v7, 0x0

    .line 350
    .local v7, "msisdn":Ljava/lang/String;
    sget-object v0, BASE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "auth"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "imsi"

    invoke-virtual {v0, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 352
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "msisdn"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 354
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4b

    :try_start_34
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4b

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 355
    const-string/jumbo v0, "msisdn"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4a
    .catchall {:try_start_34 .. :try_end_4a} :catchall_51

    move-result-object v7

    .line 357
    :cond_4b
    if-eqz v6, :cond_50

    .line 358
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 362
    :cond_50
    return-object v7

    .line 357
    :catchall_51
    move-exception v0

    if-eqz v6, :cond_57

    .line 358
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_57
    throw v0
.end method

.method public static declared-synchronized getServiceStatus(Landroid/content/Context;I)I
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceId"    # I

    .prologue
    const/4 v12, 0x1

    .line 110
    const-class v11, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;

    monitor-enter v11

    const/4 v10, 0x0

    .line 111
    .local v10, "status":I
    :try_start_5
    invoke-static {p0}, isAuth(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 112
    const/4 v6, 0x0

    .line 113
    .local v6, "cursor":Landroid/database/Cursor;
    sget-object v0, BASE_CONTENT_URI_PUBLIC:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "sids"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_a2

    move-result-object v1

    .line 115
    .local v1, "uri":Landroid/net/Uri;
    :try_start_1d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "sids"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 116
    if-eqz v6, :cond_74

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_74

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 117
    const-string/jumbo v0, "sids"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 119
    .local v9, "sids":Ljava/lang/String;
    const-string v0, "EasySignUpManager_1.0.5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServiceStatus - sids : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {v9}, convertToIntArray(Ljava/lang/String;)[I

    move-result-object v8

    .line 121
    .local v8, "result":[I
    if-eqz v8, :cond_74

    .line 122
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_69
    array-length v0, v8

    if-ge v7, v0, :cond_74

    .line 123
    aget v0, v8, v7
    :try_end_6e
    .catchall {:try_start_1d .. :try_end_6e} :catchall_9b

    if-ne p1, v0, :cond_71

    .line 124
    const/4 v10, 0x1

    .line 122
    :cond_71
    add-int/lit8 v7, v7, 0x1

    goto :goto_69

    .line 130
    .end local v7    # "j":I
    .end local v8    # "result":[I
    .end local v9    # "sids":Ljava/lang/String;
    :cond_74
    if-eqz v6, :cond_79

    .line 131
    :try_start_76
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 136
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_79
    if-ne v10, v12, :cond_a5

    .line 137
    const-string v0, "EasySignUpManager_1.0.5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServiceStatus : serviceId ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catchall {:try_start_76 .. :try_end_99} :catchall_a2

    .line 142
    :goto_99
    monitor-exit v11

    return v10

    .line 130
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catchall_9b
    move-exception v0

    if-eqz v6, :cond_a1

    .line 131
    :try_start_9e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_a1
    throw v0
    :try_end_a2
    .catchall {:try_start_9e .. :try_end_a2} :catchall_a2

    .line 110
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_a2
    move-exception v0

    monitor-exit v11

    throw v0

    .line 139
    :cond_a5
    :try_start_a5
    const-string v0, "EasySignUpManager_1.0.5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServiceStatus : serviceId ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c3
    .catchall {:try_start_a5 .. :try_end_c3} :catchall_a2

    goto :goto_99
.end method

.method public static getSupportedFeatures(Landroid/content/Context;I)I
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceId"    # I

    .prologue
    const/4 v3, 0x0

    .line 262
    const/4 v8, -0x1

    .line 263
    .local v8, "features":I
    invoke-static {p0}, isOwner(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 264
    sget-object v0, BASE_CONTENT_URI_PUBLIC:Landroid/net/Uri;

    const-string v2, "features"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 265
    .local v6, "baseUri":Landroid/net/Uri;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 267
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "features"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 269
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_42

    :try_start_2c
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_42

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 271
    const-string v0, "features"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_41
    .catchall {:try_start_2c .. :try_end_41} :catchall_6b

    move-result v8

    .line 273
    :cond_42
    if-eqz v7, :cond_47

    .line 274
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 282
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "baseUri":Landroid/net/Uri;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_47
    const-string v0, "EasySignUpManager_1.0.5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "serviceId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", features : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return v8

    .line 273
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "baseUri":Landroid/net/Uri;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catchall_6b
    move-exception v0

    if-eqz v7, :cond_71

    .line 274
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_71
    throw v0
.end method

.method public static isAuth(Landroid/content/Context;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 44
    const/4 v6, 0x0

    .line 46
    .local v6, "bIsAuth":Z
    sget-object v0, BASE_CONTENT_URI_PUBLIC:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "is_auth"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 48
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 50
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_26

    :try_start_1f
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_35

    move-result v0

    if-lez v0, :cond_26

    .line 51
    const/4 v6, 0x1

    .line 53
    :cond_26
    if-eqz v7, :cond_2b

    .line 54
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 62
    :cond_2b
    if-eqz v6, :cond_3c

    .line 63
    const-string v0, "EasySignUpManager_1.0.5"

    const-string v2, "isAuth is true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_34
    return v6

    .line 53
    :catchall_35
    move-exception v0

    if-eqz v7, :cond_3b

    .line 54
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3b
    throw v0

    .line 65
    :cond_3c
    const-string v0, "EasySignUpManager_1.0.5"

    const-string v2, "isAuth is false"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method public static isAuth(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 77
    const/4 v6, 0x0

    .line 79
    .local v6, "bIsAuth":Z
    sget-object v0, BASE_CONTENT_URI_PUBLIC:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "is_auth"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "imsi"

    invoke-virtual {v0, v3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 81
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 83
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2c

    :try_start_25
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_3b

    move-result v0

    if-lez v0, :cond_2c

    .line 84
    const/4 v6, 0x1

    .line 86
    :cond_2c
    if-eqz v7, :cond_31

    .line 87
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 95
    :cond_31
    if-eqz v6, :cond_42

    .line 96
    const-string v0, "EasySignUpManager_1.0.5"

    const-string v2, "isAuth regarding imsi is true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_3a
    return v6

    .line 86
    :catchall_3b
    move-exception v0

    if-eqz v7, :cond_41

    .line 87
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_41
    throw v0

    .line 98
    :cond_42
    const-string v0, "EasySignUpManager_1.0.5"

    const-string v2, "isAuth regarding imsi is false"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a
.end method

.method public static declared-synchronized isJoined(Landroid/content/Context;I)Z
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceId"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 150
    const-class v12, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;

    monitor-enter v12

    :try_start_5
    invoke-static {p0}, isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 151
    const-string v0, "EasySignUpManager_1.0.5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auth : false, join : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_a0

    move v0, v10

    .line 190
    :goto_24
    monitor-exit v12

    return v0

    .line 154
    :cond_26
    const/4 v6, 0x0

    .line 155
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_27
    sget-object v0, BASE_CONTENT_URI_PUBLIC:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "join_sids"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_a0

    move-result-object v1

    .line 157
    .local v1, "uri":Landroid/net/Uri;
    :try_start_37
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "join_sids"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 159
    if-eqz v6, :cond_92

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_92

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 160
    const-string v0, "join_sids"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 161
    .local v8, "joinSids":Ljava/lang/String;
    const-string v0, "EasySignUpManager_1.0.5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServiceStatus - join sids : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-static {v8}, convertToIntArray(Ljava/lang/String;)[I

    move-result-object v9

    .line 165
    .local v9, "result":[I
    if-eqz v9, :cond_92

    .line 166
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_81
    array-length v0, v9

    if-ge v7, v0, :cond_92

    .line 167
    aget v0, v9, v7
    :try_end_86
    .catchall {:try_start_37 .. :try_end_86} :catchall_99

    if-ne p1, v0, :cond_8f

    .line 175
    if-eqz v6, :cond_8d

    .line 176
    :try_start_8a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8d
    move v0, v11

    goto :goto_24

    .line 166
    :cond_8f
    add-int/lit8 v7, v7, 0x1

    goto :goto_81

    .line 175
    .end local v7    # "j":I
    .end local v8    # "joinSids":Ljava/lang/String;
    .end local v9    # "result":[I
    :cond_92
    if-eqz v6, :cond_97

    .line 176
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_97
    move v0, v10

    .line 190
    goto :goto_24

    .line 175
    :catchall_99
    move-exception v0

    if-eqz v6, :cond_9f

    .line 176
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9f
    throw v0
    :try_end_a0
    .catchall {:try_start_8a .. :try_end_a0} :catchall_a0

    .line 150
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_a0
    move-exception v0

    monitor-exit v12

    throw v0
.end method

.method public static isJoined(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "serviceId"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 198
    invoke-static {p0, p1}, isAuth(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 199
    const-string v0, "EasySignUpManager_1.0.5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auth : false, join : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 224
    :cond_21
    :goto_21
    return v0

    .line 203
    :cond_22
    const-string v9, ""

    .line 204
    .local v9, "sids":Ljava/lang/String;
    sget-object v0, BASE_CONTENT_URI_PUBLIC:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "join_sids"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "imsi"

    invoke-virtual {v0, v3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 205
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 207
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_97

    :try_start_47
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_97

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 208
    const-string v0, "join_sids"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 209
    const-string v0, "EasySignUpManager_1.0.5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "join : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sids : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-static {v9}, convertToIntArray(Ljava/lang/String;)[I

    move-result-object v8

    .line 211
    .local v8, "result":[I
    if-eqz v8, :cond_97

    .line 212
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_86
    array-length v0, v8

    if-ge v7, v0, :cond_97

    .line 213
    aget v0, v8, v7
    :try_end_8b
    .catchall {:try_start_47 .. :try_end_8b} :catchall_9e

    if-ne p2, v0, :cond_94

    .line 214
    const/4 v0, 0x1

    .line 220
    if-eqz v6, :cond_21

    .line 221
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_21

    .line 212
    :cond_94
    add-int/lit8 v7, v7, 0x1

    goto :goto_86

    .line 220
    .end local v7    # "j":I
    .end local v8    # "result":[I
    :cond_97
    if-eqz v6, :cond_9c

    .line 221
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9c
    move v0, v10

    .line 224
    goto :goto_21

    .line 220
    :catchall_9e
    move-exception v0

    if-eqz v6, :cond_a4

    .line 221
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_a4
    throw v0
.end method

.method private static isOwner(Landroid/content/Context;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 392
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 393
    .local v0, "userHandle":Landroid/os/UserHandle;
    const-string/jumbo v5, "user"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 394
    .local v1, "userMgr":Landroid/os/UserManager;
    if-eqz v1, :cond_34

    .line 396
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    .line 397
    .local v2, "userSerialNum":J
    const-string v5, "EasySignUpManager_1.0.5"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "userSerialNumber = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-wide/16 v6, 0x0

    cmp-long v5, v6, v2

    if-nez v5, :cond_34

    const/4 v4, 0x1

    .line 401
    .end local v2    # "userSerialNum":J
    :cond_34
    return v4
.end method

.method public static isSDKServiceEnable(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "serviceId"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 233
    const-string v9, ""

    .line 234
    .local v9, "sids":Ljava/lang/String;
    sget-object v0, BASE_CONTENT_URI_PUBLIC:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v3, "sdk_sids"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "imsi"

    invoke-virtual {v0, v3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 235
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 237
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_74

    :try_start_28
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_74

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 238
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 239
    const-string v0, "EasySignUpManager_1.0.5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sdkService : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sidsList : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-static {v9}, convertToIntArray(Ljava/lang/String;)[I

    move-result-object v8

    .line 241
    .local v8, "result":[I
    if-eqz v8, :cond_74

    .line 242
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_63
    array-length v0, v8

    if-ge v7, v0, :cond_74

    .line 243
    aget v0, v8, v7
    :try_end_68
    .catchall {:try_start_28 .. :try_end_68} :catchall_7b

    if-ne p2, v0, :cond_71

    .line 244
    const/4 v0, 0x1

    .line 250
    if-eqz v6, :cond_70

    .line 251
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 254
    .end local v7    # "j":I
    .end local v8    # "result":[I
    :cond_70
    :goto_70
    return v0

    .line 242
    .restart local v7    # "j":I
    .restart local v8    # "result":[I
    :cond_71
    add-int/lit8 v7, v7, 0x1

    goto :goto_63

    .line 250
    .end local v7    # "j":I
    .end local v8    # "result":[I
    :cond_74
    if-eqz v6, :cond_79

    .line 251
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_79
    move v0, v10

    .line 254
    goto :goto_70

    .line 250
    :catchall_7b
    move-exception v0

    if-eqz v6, :cond_81

    .line 251
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_81
    throw v0
.end method

.method public static serviceOff(Landroid/content/Context;I)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceId"    # I

    .prologue
    .line 306
    const-string v1, "EasySignUpManager_1.0.5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "serviceOff - serviceId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_SERVICE_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.coreapps"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 311
    const-string/jumbo v1, "service_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 313
    return-void
.end method

.method public static serviceOn(Landroid/content/Context;I)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceId"    # I

    .prologue
    .line 292
    const-string v1, "EasySignUpManager_1.0.5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "serviceOn - serviceId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_SERVICE_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 295
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.coreapps"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 297
    const-string/jumbo v1, "service_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 299
    return-void
.end method
