.class Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AggregatedStats"
.end annotation


# instance fields
.field public final key:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mCreated:J

.field private mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

.field public numAutoCancel:I

.field public numBlocked:I

.field public numForegroundService:I

.field public numInterrupt:I

.field public numOngoing:I

.field public numPeopleCacheHit:I

.field public numPeopleCacheMiss:I

.field public numPostedByApp:I

.field public numPriorityHigh:I

.field public numPriorityLow:I

.field public numPriorityMax:I

.field public numPriorityMin:I

.field public numPrivate:I

.field public numRemovedByApp:I

.field public numSecret:I

.field public numUpdatedByApp:I

.field public numWithActions:I

.field public numWithBigPicture:I

.field public numWithBigText:I

.field public numWithInbox:I

.field public numWithInfoText:I

.field public numWithLargeIcon:I

.field public numWithMediaSession:I

.field public numWithStaredPeople:I

.field public numWithSubText:I

.field public numWithText:I

.field public numWithTitle:I

.field public numWithValidPeople:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-object p2, p0, key:Ljava/lang/String;

    .line 319
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 320
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, mCreated:J

    .line 321
    return-void
.end method

.method private maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .registers 4
    .param p1, "dump"    # Lorg/json/JSONObject;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 523
    if-lez p3, :cond_5

    .line 524
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 526
    :cond_5
    return-void
.end method

.method private toStringWithIndent(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .prologue
    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AggregatedStats{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  numPostedByApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, numPostedByApp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  numUpdatedByApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, numUpdatedByApp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  numRemovedByApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, numRemovedByApp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  numPeopleCacheHit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, numPeopleCacheHit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  numWithStaredPeople="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, numWithStaredPeople:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  numWithValidPeople="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, numWithValidPeople:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  numPeopleCacheMiss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, numPeopleCacheMiss:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  numBlocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, numBlocked:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public countApiUse(Lcom/android/server/notification/NotificationRecord;)V
    .registers 7
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 324
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 325
    .local v2, "n":Landroid/app/Notification;
    iget-object v3, v2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v3, :cond_e

    .line 326
    iget v3, p0, numWithActions:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, numWithActions:I

    .line 329
    :cond_e
    iget v3, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_1a

    .line 330
    iget v3, p0, numForegroundService:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, numForegroundService:I

    .line 333
    :cond_1a
    iget v3, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_26

    .line 334
    iget v3, p0, numOngoing:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, numOngoing:I

    .line 337
    :cond_26
    iget v3, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_32

    .line 338
    iget v3, p0, numAutoCancel:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, numAutoCancel:I

    .line 341
    :cond_32
    iget v3, v2, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_46

    iget v3, v2, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_46

    iget-object v3, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-nez v3, :cond_46

    iget-object v3, v2, Landroid/app/Notification;->vibrate:[J

    if-eqz v3, :cond_4c

    .line 344
    :cond_46
    iget v3, p0, numInterrupt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, numInterrupt:I

    .line 347
    :cond_4c
    iget v3, v2, Landroid/app/Notification;->visibility:I

    packed-switch v3, :pswitch_data_136

    .line 356
    :goto_51
    iget v3, v2, Landroid/app/Notification;->priority:I

    packed-switch v3, :pswitch_data_13e

    .line 371
    :goto_56
    :pswitch_56
    iget-object v3, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_60
    :goto_60
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_134

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 372
    .local v0, "Key":Ljava/lang/String;
    const-string v3, "android.bigText"

    iget-object v4, p0, key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 373
    iget v3, p0, numWithBigText:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, numWithBigText:I

    goto :goto_60

    .line 349
    .end local v0    # "Key":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :pswitch_7d
    iget v3, p0, numPrivate:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, numPrivate:I

    goto :goto_51

    .line 352
    :pswitch_84
    iget v3, p0, numSecret:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, numSecret:I

    goto :goto_51

    .line 358
    :pswitch_8b
    iget v3, p0, numPriorityMax:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, numPriorityMax:I

    goto :goto_56

    .line 361
    :pswitch_92
    iget v3, p0, numPriorityHigh:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, numPriorityHigh:I

    goto :goto_56

    .line 364
    :pswitch_99
    iget v3, p0, numPriorityLow:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, numPriorityLow:I

    goto :goto_56

    .line 367
    :pswitch_a0
    iget v3, p0, numPriorityMin:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, numPriorityMin:I

    goto :goto_56

    .line 374
    .restart local v0    # "Key":Ljava/lang/String;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_a7
    const-string v3, "android.picture"

    iget-object v4, p0, key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 375
    iget v3, p0, numWithBigPicture:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, numWithBigPicture:I

    goto :goto_60

    .line 376
    :cond_b8
    const-string v3, "android.largeIcon"

    iget-object v4, p0, key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c9

    .line 377
    iget v3, p0, numWithLargeIcon:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, numWithLargeIcon:I

    goto :goto_60

    .line 378
    :cond_c9
    const-string v3, "android.textLines"

    iget-object v4, p0, key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_da

    .line 379
    iget v3, p0, numWithInbox:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, numWithInbox:I

    goto :goto_60

    .line 380
    :cond_da
    const-string v3, "android.mediaSession"

    iget-object v4, p0, key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    .line 381
    iget v3, p0, numWithMediaSession:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, numWithMediaSession:I

    goto/16 :goto_60

    .line 382
    :cond_ec
    const-string v3, "android.title"

    iget-object v4, p0, key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fe

    .line 383
    iget v3, p0, numWithTitle:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, numWithTitle:I

    goto/16 :goto_60

    .line 384
    :cond_fe
    const-string v3, "android.text"

    iget-object v4, p0, key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_110

    .line 385
    iget v3, p0, numWithText:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, numWithText:I

    goto/16 :goto_60

    .line 386
    :cond_110
    const-string v3, "android.subText"

    iget-object v4, p0, key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_122

    .line 387
    iget v3, p0, numWithSubText:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, numWithSubText:I

    goto/16 :goto_60

    .line 388
    :cond_122
    const-string v3, "android.infoText"

    iget-object v4, p0, key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 389
    iget v3, p0, numWithInfoText:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, numWithInfoText:I

    goto/16 :goto_60

    .line 392
    .end local v0    # "Key":Ljava/lang/String;
    :cond_134
    return-void

    .line 347
    nop

    :pswitch_data_136
    .packed-switch -0x1
        :pswitch_84
        :pswitch_7d
    .end packed-switch

    .line 356
    :pswitch_data_13e
    .packed-switch -0x2
        :pswitch_a0
        :pswitch_99
        :pswitch_56
        :pswitch_92
        :pswitch_8b
    .end packed-switch
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;

    .prologue
    .line 465
    invoke-direct {p0, p2}, toStringWithIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method public dumpJson()Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 488
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 489
    .local v0, "dump":Lorg/json/JSONObject;
    const-string/jumbo v1, "key"

    iget-object v2, p0, key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 490
    const-string/jumbo v1, "duration"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, mCreated:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 491
    const-string/jumbo v1, "numPostedByApp"

    iget v2, p0, numPostedByApp:I

    invoke-direct {p0, v0, v1, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 492
    const-string/jumbo v1, "numUpdatedByApp"

    iget v2, p0, numUpdatedByApp:I

    invoke-direct {p0, v0, v1, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 493
    const-string/jumbo v1, "numRemovedByApp"

    iget v2, p0, numRemovedByApp:I

    invoke-direct {p0, v0, v1, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 494
    const-string/jumbo v1, "numPeopleCacheHit"

    iget v2, p0, numPeopleCacheHit:I

    invoke-direct {p0, v0, v1, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 495
    const-string/jumbo v1, "numPeopleCacheMiss"

    iget v2, p0, numPeopleCacheMiss:I

    invoke-direct {p0, v0, v1, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 496
    const-string/jumbo v1, "numWithStaredPeople"

    iget v2, p0, numWithStaredPeople:I

    invoke-direct {p0, v0, v1, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 497
    const-string/jumbo v1, "numWithValidPeople"

    iget v2, p0, numWithValidPeople:I

    invoke-direct {p0, v0, v1, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 498
    const-string/jumbo v1, "numBlocked"

    iget v2, p0, numBlocked:I

    invoke-direct {p0, v0, v1, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 499
    const-string/jumbo v1, "numWithActions"

    iget v2, p0, numWithActions:I

    invoke-direct {p0, v0, v1, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 500
    const-string/jumbo v1, "numPrivate"

    iget v2, p0, numPrivate:I

    invoke-direct {p0, v0, v1, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 501
    const-string/jumbo v1, "numSecret"

    iget v2, p0, numSecret:I

    invoke-direct {p0, v0, v1, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 502
    const-string/jumbo v1, "numPriorityMax"

    iget v2, p0, numPriorityMax:I

    invoke-direct {p0, v0, v1, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 503
    const-string/jumbo v1, "numPriorityHigh"

    iget v2, p0, numPriorityHigh:I

    invoke-direct {p0, v0, v1, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 504
    const-string/jumbo v1, "numPriorityLow"

    iget v2, p0, numPriorityLow:I

    invoke-direct {p0, v0, v1, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 505
    const-string/jumbo v1, "numPriorityMin"

    iget v2, p0, numPriorityMin:I

    invoke-direct {p0, v0, v1, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 506
    const-string/jumbo v1, "numInterrupt"

    iget v2, p0, numInterrupt:I

    invoke-direct {p0, v0, v1, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 507
    const-string/jumbo v1, "numWithBigText"

    iget v2, p0, numWithBigText:I

    invoke-direct {p0, v0, v1, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 508
    const-string/jumbo v1, "numWithBigPicture"

    iget v2, p0, numWithBigPicture:I

    invoke-direct {p0, v0, v1, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 509
    const-string/jumbo v1, "numForegroundService"

    iget v2, p0, numForegroundService:I

    invoke-direct {p0, v0, v1, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 510
    const-string/jumbo v1, "numOngoing"

    iget v2, p0, numOngoing:I

    invoke-direct {p0, v0, v1, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 511
    const-string/jumbo v1, "numAutoCancel"

    iget v2, p0, numAutoCancel:I

    invoke-direct {p0, v0, v1, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 512
    const-string/jumbo v1, "numWithLargeIcon"

    iget v2, p0, numWithLargeIcon:I

    invoke-direct {p0, v0, v1, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 513
    const-string/jumbo v1, "numWithInbox"

    iget v2, p0, numWithInbox:I

    invoke-direct {p0, v0, v1, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 514
    const-string/jumbo v1, "numWithMediaSession"

    iget v2, p0, numWithMediaSession:I

    invoke-direct {p0, v0, v1, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 515
    const-string/jumbo v1, "numWithTitle"

    iget v2, p0, numWithTitle:I

    invoke-direct {p0, v0, v1, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 516
    const-string/jumbo v1, "numWithText"

    iget v2, p0, numWithText:I

    invoke-direct {p0, v0, v1, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 517
    const-string/jumbo v1, "numWithSubText"

    iget v2, p0, numWithSubText:I

    invoke-direct {p0, v0, v1, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 518
    const-string/jumbo v1, "numWithInfoText"

    iget v2, p0, numWithInfoText:I

    invoke-direct {p0, v0, v1, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 519
    return-object v0
.end method

.method public emit()V
    .registers 4

    .prologue
    .line 395
    iget-object v0, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    if-nez v0, :cond_e

    .line 396
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    const/4 v1, 0x0

    iget-object v2, p0, key:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, <init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    .line 399
    :cond_e
    const-string/jumbo v0, "note_post"

    iget v1, p0, numPostedByApp:I

    iget-object v2, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, numPostedByApp:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, maybeCount(Ljava/lang/String;I)V

    .line 400
    const-string/jumbo v0, "note_update"

    iget v1, p0, numUpdatedByApp:I

    iget-object v2, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, numUpdatedByApp:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, maybeCount(Ljava/lang/String;I)V

    .line 401
    const-string/jumbo v0, "note_remove"

    iget v1, p0, numRemovedByApp:I

    iget-object v2, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, numRemovedByApp:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, maybeCount(Ljava/lang/String;I)V

    .line 402
    const-string/jumbo v0, "note_with_people"

    iget v1, p0, numWithValidPeople:I

    iget-object v2, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, numWithValidPeople:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, maybeCount(Ljava/lang/String;I)V

    .line 403
    const-string/jumbo v0, "note_with_stars"

    iget v1, p0, numWithStaredPeople:I

    iget-object v2, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, numWithStaredPeople:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, maybeCount(Ljava/lang/String;I)V

    .line 404
    const-string/jumbo v0, "people_cache_hit"

    iget v1, p0, numPeopleCacheHit:I

    iget-object v2, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, numPeopleCacheHit:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, maybeCount(Ljava/lang/String;I)V

    .line 405
    const-string/jumbo v0, "people_cache_miss"

    iget v1, p0, numPeopleCacheMiss:I

    iget-object v2, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, numPeopleCacheMiss:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, maybeCount(Ljava/lang/String;I)V

    .line 406
    const-string/jumbo v0, "note_blocked"

    iget v1, p0, numBlocked:I

    iget-object v2, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, numBlocked:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, maybeCount(Ljava/lang/String;I)V

    .line 407
    const-string/jumbo v0, "note_with_actions"

    iget v1, p0, numWithActions:I

    iget-object v2, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, numWithActions:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, maybeCount(Ljava/lang/String;I)V

    .line 408
    const-string/jumbo v0, "note_private"

    iget v1, p0, numPrivate:I

    iget-object v2, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, numPrivate:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, maybeCount(Ljava/lang/String;I)V

    .line 409
    const-string/jumbo v0, "note_secret"

    iget v1, p0, numSecret:I

    iget-object v2, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, numSecret:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, maybeCount(Ljava/lang/String;I)V

    .line 410
    const-string/jumbo v0, "note_prio_max"

    iget v1, p0, numPriorityMax:I

    iget-object v2, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, numPriorityMax:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, maybeCount(Ljava/lang/String;I)V

    .line 411
    const-string/jumbo v0, "note_prio_high"

    iget v1, p0, numPriorityHigh:I

    iget-object v2, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, numPriorityHigh:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, maybeCount(Ljava/lang/String;I)V

    .line 412
    const-string/jumbo v0, "note_prio_low"

    iget v1, p0, numPriorityLow:I

    iget-object v2, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, numPriorityLow:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, maybeCount(Ljava/lang/String;I)V

    .line 413
    const-string/jumbo v0, "note_prio_min"

    iget v1, p0, numPriorityMin:I

    iget-object v2, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, numPriorityMin:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, maybeCount(Ljava/lang/String;I)V

    .line 414
    const-string/jumbo v0, "note_interupt"

    iget v1, p0, numInterrupt:I

    iget-object v2, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, numInterrupt:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, maybeCount(Ljava/lang/String;I)V

    .line 415
    const-string/jumbo v0, "note_big_text"

    iget v1, p0, numWithBigText:I

    iget-object v2, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, numWithBigText:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, maybeCount(Ljava/lang/String;I)V

    .line 416
    const-string/jumbo v0, "note_big_pic"

    iget v1, p0, numWithBigPicture:I

    iget-object v2, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, numWithBigPicture:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, maybeCount(Ljava/lang/String;I)V

    .line 417
    const-string/jumbo v0, "note_fg"

    iget v1, p0, numForegroundService:I

    iget-object v2, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, numForegroundService:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, maybeCount(Ljava/lang/String;I)V

    .line 418
    const-string/jumbo v0, "note_ongoing"

    iget v1, p0, numOngoing:I

    iget-object v2, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, numOngoing:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, maybeCount(Ljava/lang/String;I)V

    .line 419
    const-string/jumbo v0, "note_auto"

    iget v1, p0, numAutoCancel:I

    iget-object v2, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, numAutoCancel:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, maybeCount(Ljava/lang/String;I)V

    .line 420
    const-string/jumbo v0, "note_large_icon"

    iget v1, p0, numWithLargeIcon:I

    iget-object v2, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, numWithLargeIcon:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, maybeCount(Ljava/lang/String;I)V

    .line 421
    const-string/jumbo v0, "note_inbox"

    iget v1, p0, numWithInbox:I

    iget-object v2, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, numWithInbox:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, maybeCount(Ljava/lang/String;I)V

    .line 422
    const-string/jumbo v0, "note_media"

    iget v1, p0, numWithMediaSession:I

    iget-object v2, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, numWithMediaSession:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, maybeCount(Ljava/lang/String;I)V

    .line 423
    const-string/jumbo v0, "note_title"

    iget v1, p0, numWithTitle:I

    iget-object v2, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, numWithTitle:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, maybeCount(Ljava/lang/String;I)V

    .line 424
    const-string/jumbo v0, "note_text"

    iget v1, p0, numWithText:I

    iget-object v2, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, numWithText:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, maybeCount(Ljava/lang/String;I)V

    .line 425
    const-string/jumbo v0, "note_sub_text"

    iget v1, p0, numWithSubText:I

    iget-object v2, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, numWithSubText:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, maybeCount(Ljava/lang/String;I)V

    .line 426
    const-string/jumbo v0, "note_info_text"

    iget v1, p0, numWithInfoText:I

    iget-object v2, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v2, v2, numWithInfoText:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, maybeCount(Ljava/lang/String;I)V

    .line 428
    iget-object v0, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, numPostedByApp:I

    iput v1, v0, numPostedByApp:I

    .line 429
    iget-object v0, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, numUpdatedByApp:I

    iput v1, v0, numUpdatedByApp:I

    .line 430
    iget-object v0, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, numRemovedByApp:I

    iput v1, v0, numRemovedByApp:I

    .line 431
    iget-object v0, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, numPeopleCacheHit:I

    iput v1, v0, numPeopleCacheHit:I

    .line 432
    iget-object v0, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, numPeopleCacheMiss:I

    iput v1, v0, numPeopleCacheMiss:I

    .line 433
    iget-object v0, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, numWithStaredPeople:I

    iput v1, v0, numWithStaredPeople:I

    .line 434
    iget-object v0, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, numWithValidPeople:I

    iput v1, v0, numWithValidPeople:I

    .line 435
    iget-object v0, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, numBlocked:I

    iput v1, v0, numBlocked:I

    .line 436
    iget-object v0, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, numWithActions:I

    iput v1, v0, numWithActions:I

    .line 437
    iget-object v0, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, numPrivate:I

    iput v1, v0, numPrivate:I

    .line 438
    iget-object v0, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, numSecret:I

    iput v1, v0, numSecret:I

    .line 439
    iget-object v0, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, numPriorityMax:I

    iput v1, v0, numPriorityMax:I

    .line 440
    iget-object v0, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, numPriorityHigh:I

    iput v1, v0, numPriorityHigh:I

    .line 441
    iget-object v0, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, numPriorityLow:I

    iput v1, v0, numPriorityLow:I

    .line 442
    iget-object v0, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, numPriorityMin:I

    iput v1, v0, numPriorityMin:I

    .line 443
    iget-object v0, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, numInterrupt:I

    iput v1, v0, numInterrupt:I

    .line 444
    iget-object v0, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, numWithBigText:I

    iput v1, v0, numWithBigText:I

    .line 445
    iget-object v0, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, numWithBigPicture:I

    iput v1, v0, numWithBigPicture:I

    .line 446
    iget-object v0, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, numForegroundService:I

    iput v1, v0, numForegroundService:I

    .line 447
    iget-object v0, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, numOngoing:I

    iput v1, v0, numOngoing:I

    .line 448
    iget-object v0, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, numAutoCancel:I

    iput v1, v0, numAutoCancel:I

    .line 449
    iget-object v0, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, numWithLargeIcon:I

    iput v1, v0, numWithLargeIcon:I

    .line 450
    iget-object v0, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, numWithInbox:I

    iput v1, v0, numWithInbox:I

    .line 451
    iget-object v0, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, numWithMediaSession:I

    iput v1, v0, numWithMediaSession:I

    .line 452
    iget-object v0, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, numWithTitle:I

    iput v1, v0, numWithTitle:I

    .line 453
    iget-object v0, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, numWithText:I

    iput v1, v0, numWithText:I

    .line 454
    iget-object v0, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, numWithSubText:I

    iput v1, v0, numWithSubText:I

    .line 455
    iget-object v0, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget v1, p0, numWithInfoText:I

    iput v1, v0, numWithInfoText:I

    .line 456
    return-void
.end method

.method maybeCount(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 459
    if-lez p2, :cond_7

    .line 460
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 462
    :cond_7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 470
    const-string v0, ""

    invoke-direct {p0, v0}, toStringWithIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
