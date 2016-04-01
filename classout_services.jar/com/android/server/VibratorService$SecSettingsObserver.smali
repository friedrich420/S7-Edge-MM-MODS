.class Lcom/android/server/VibratorService$SecSettingsObserver;
.super Landroid/database/ContentObserver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecSettingsObserver"
.end annotation


# instance fields
.field private mType:I

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;I)V
    .registers 7
    .param p2, "type"    # I

    .prologue
    .line 1439
    iput-object p1, p0, this$0:Lcom/android/server/VibratorService;

    .line 1440
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1441
    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$2500(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/VibratorService;->access$2400()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1442
    iput p2, p0, mType:I

    .line 1443
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 8
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x5

    .line 1452
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1454
    # getter for: Lcom/android/server/VibratorService;->mIsEnableIntensity:Z
    invoke-static {}, Lcom/android/server/VibratorService;->access$2600()Z

    move-result v1

    if-nez v1, :cond_14

    .line 1455
    const-string v1, "VibratorService"

    const-string/jumbo v2, "mIsEnableIntensity is false (onChange)"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    :goto_13
    return-void

    .line 1459
    :cond_14
    iget v1, p0, mType:I

    packed-switch v1, :pswitch_data_a4

    goto :goto_13

    .line 1461
    :pswitch_1a
    iget-object v1, p0, this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2500(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v1

    # getter for: Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/VibratorService;->access$2400()[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, mType:I

    aget-object v2, v2, v3

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1462
    .local v0, "magnitudeLevel":I
    iget-object v1, p0, this$0:Lcom/android/server/VibratorService;

    if-le v0, v4, :cond_3b

    .end local v0    # "magnitudeLevel":I
    :goto_30
    # setter for: Lcom/android/server/VibratorService;->mTouchMagnitude:I
    invoke-static {v1, v0}, Lcom/android/server/VibratorService;->access$2702(Lcom/android/server/VibratorService;I)I

    .line 1464
    const-string v1, "VibratorService"

    const-string v2, "Feedback magnitude has changed"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 1462
    .restart local v0    # "magnitudeLevel":I
    :cond_3b
    # getter for: Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I
    invoke-static {}, Lcom/android/server/VibratorService;->access$2800()[I

    move-result-object v2

    aget v0, v2, v0

    goto :goto_30

    .line 1469
    .end local v0    # "magnitudeLevel":I
    :pswitch_42
    iget-object v1, p0, this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2500(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v1

    # getter for: Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/VibratorService;->access$2400()[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, mType:I

    aget-object v2, v2, v3

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1470
    .restart local v0    # "magnitudeLevel":I
    iget-object v1, p0, this$0:Lcom/android/server/VibratorService;

    if-le v0, v4, :cond_63

    .end local v0    # "magnitudeLevel":I
    :goto_58
    # setter for: Lcom/android/server/VibratorService;->mCallMagnitude:I
    invoke-static {v1, v0}, Lcom/android/server/VibratorService;->access$2902(Lcom/android/server/VibratorService;I)I

    .line 1472
    const-string v1, "VibratorService"

    const-string v2, "Call magnitude has changed"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 1470
    .restart local v0    # "magnitudeLevel":I
    :cond_63
    # getter for: Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I
    invoke-static {}, Lcom/android/server/VibratorService;->access$2800()[I

    move-result-object v2

    aget v0, v2, v0

    goto :goto_58

    .line 1477
    .end local v0    # "magnitudeLevel":I
    :pswitch_6a
    iget-object v1, p0, this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2500(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v1

    # getter for: Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/VibratorService;->access$2400()[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, mType:I

    aget-object v2, v2, v3

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1478
    .restart local v0    # "magnitudeLevel":I
    iget-object v1, p0, this$0:Lcom/android/server/VibratorService;

    if-le v0, v4, :cond_9d

    .end local v0    # "magnitudeLevel":I
    :goto_80
    # setter for: Lcom/android/server/VibratorService;->mNotiMagnitude:I
    invoke-static {v1, v0}, Lcom/android/server/VibratorService;->access$3002(Lcom/android/server/VibratorService;I)I

    .line 1480
    # getter for: Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z
    invoke-static {}, Lcom/android/server/VibratorService;->access$3100()Z

    move-result v1

    if-nez v1, :cond_94

    .line 1481
    iget-object v1, p0, this$0:Lcom/android/server/VibratorService;

    iget-object v2, p0, this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mNotiMagnitude:I
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$3000(Lcom/android/server/VibratorService;)I

    move-result v2

    # setter for: Lcom/android/server/VibratorService;->mDefaultMagnitude:I
    invoke-static {v1, v2}, Lcom/android/server/VibratorService;->access$1902(Lcom/android/server/VibratorService;I)I

    .line 1484
    :cond_94
    const-string v1, "VibratorService"

    const-string v2, "Notification magnitude has changed"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 1478
    .restart local v0    # "magnitudeLevel":I
    :cond_9d
    # getter for: Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I
    invoke-static {}, Lcom/android/server/VibratorService;->access$2800()[I

    move-result-object v2

    aget v0, v2, v0

    goto :goto_80

    .line 1459
    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_42
        :pswitch_6a
    .end packed-switch
.end method

.method reload()V
    .registers 5

    .prologue
    .line 1446
    iget-object v0, p0, this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$2500(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1447
    iget-object v0, p0, this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$2500(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/VibratorService;->access$2400()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, mType:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1448
    return-void
.end method
