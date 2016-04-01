.class public Landroid/widget/Toast;
.super Ljava/lang/Object;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Toast$TN;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_LONG_DOUBLE:I = 0x3e8

.field public static final LENGTH_SHORT:I = 0x0

.field static final TAG:Ljava/lang/String; = "Toast"

.field static final localLOGV:Z

.field private static sService:Landroid/app/INotificationManager;


# instance fields
.field final mContext:Landroid/content/Context;

.field mDuration:I

.field mNextView:Landroid/view/View;

.field final mTN:Landroid/widget/Toast$TN;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 100
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_14

    move v0, v1

    :goto_9
    sput-boolean v0, localLOGV:Z

    .line 101
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_16

    :goto_11
    sput-boolean v1, DEBUG:Z

    return-void

    :cond_14
    move v0, v2

    .line 100
    goto :goto_9

    :cond_16
    move v1, v2

    .line 101
    goto :goto_11
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 143
    new-instance v0, Landroid/widget/Toast$TN;

    invoke-direct {v0}, Landroid/widget/Toast$TN;-><init>()V

    iput-object v0, p0, mTN:Landroid/widget/Toast$TN;

    .line 144
    iget-object v0, p0, mTN:Landroid/widget/Toast$TN;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/Toast$TN;->mY:I

    .line 146
    iget-object v0, p0, mTN:Landroid/widget/Toast$TN;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0088

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Landroid/widget/Toast$TN;->mGravity:I

    .line 151
    const-string v0, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 152
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "getToastGravityEnabledState"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 155
    .local v7, "cursorState":Landroid/database/Cursor;
    if-eqz v7, :cond_cd

    .line 156
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "getToastGravity"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 157
    .local v6, "cursorGravity":Landroid/database/Cursor;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "getToastGravityXOffset"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 158
    .local v8, "cursorX":Landroid/database/Cursor;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "getToastGravityYOffset"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 160
    .local v9, "cursorY":Landroid/database/Cursor;
    :try_start_6b
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 161
    const-string v0, "getToastGravityEnabledState"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 163
    .local v10, "enabledState":Z
    if-eqz v10, :cond_c1

    .line 164
    const-string v0, "Toast"

    const-string v2, "Knox Customization: Using custom gravity"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 167
    const-string v0, "getToastGravity"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 169
    .local v11, "gravity":I
    if-eqz v11, :cond_9b

    .line 170
    iget-object v0, p0, mTN:Landroid/widget/Toast$TN;

    iput v11, v0, Landroid/widget/Toast$TN;->mGravity:I

    .line 173
    :cond_9b
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 174
    const-string v0, "getToastGravityXOffset"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 176
    .local v12, "x":I
    if-eqz v12, :cond_ae

    .line 177
    iget-object v0, p0, mTN:Landroid/widget/Toast$TN;

    iput v12, v0, Landroid/widget/Toast$TN;->mX:I

    .line 180
    :cond_ae
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 181
    const-string v0, "getToastGravityYOffset"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 183
    .local v13, "y":I
    if-eqz v13, :cond_c1

    .line 184
    iget-object v0, p0, mTN:Landroid/widget/Toast$TN;

    iput v13, v0, Landroid/widget/Toast$TN;->mY:I
    :try_end_c1
    .catchall {:try_start_6b .. :try_end_c1} :catchall_ce

    .line 188
    .end local v11    # "gravity":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_c1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 189
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 190
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 191
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 196
    .end local v6    # "cursorGravity":Landroid/database/Cursor;
    .end local v8    # "cursorX":Landroid/database/Cursor;
    .end local v9    # "cursorY":Landroid/database/Cursor;
    .end local v10    # "enabledState":Z
    :cond_cd
    return-void

    .line 188
    .restart local v6    # "cursorGravity":Landroid/database/Cursor;
    .restart local v8    # "cursorX":Landroid/database/Cursor;
    .restart local v9    # "cursorY":Landroid/database/Cursor;
    :catchall_ce
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 189
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 190
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 191
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static synthetic access$000()Landroid/app/INotificationManager;
    .registers 1

    .prologue
    .line 98
    invoke-static {}, getService()Landroid/app/INotificationManager;

    move-result-object v0

    return-object v0
.end method

.method private checkGameHomeWhiteList()Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 615
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "game_no_interruption"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 617
    .local v0, "gameNoInterruption":I
    if-lez v0, :cond_41

    .line 619
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "game_no_interruption_white_list"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 621
    .local v2, "whitelist":Ljava/lang/String;
    if-eqz v2, :cond_5c

    .line 622
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 624
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 625
    const-string v4, "Toast"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GameNoInterruption mode. Show game toast. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "whitelist":Ljava/lang/String;
    :cond_41
    :goto_41
    return v3

    .line 629
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "whitelist":Ljava/lang/String;
    :cond_42
    const-string v3, "Toast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GameNoInterruption mode. Block toast "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const/4 v3, 0x1

    goto :goto_41

    .line 634
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_5c
    const-string v4, "Toast"

    const-string v5, "gameNoInterruption is on, but whitelist is null."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41
.end method

.method private checkMirrorLinkEnabled()Z
    .registers 5

    .prologue
    .line 565
    const/4 v0, 0x0

    .line 566
    .local v0, "mirrorLinkOn":Z
    const-string/jumbo v1, "net.mirrorlink.on"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 567
    const/4 v0, 0x1

    .line 569
    :cond_11
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_2d

    const-string v1, "Toast"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " checkMirrorLinkEnabled returns : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_2d
    return v0
.end method

.method private checkShowingCondition()Z
    .registers 2

    .prologue
    .line 558
    invoke-direct {p0}, checkMirrorLinkEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 559
    const/4 v0, 0x1

    .line 561
    :goto_7
    return v0

    :cond_8
    invoke-direct {p0}, checkWhiteList()Z

    move-result v0

    goto :goto_7
.end method

.method private checkWhiteList()Z
    .registers 14

    .prologue
    const/4 v5, 0x1

    const/4 v12, 0x0

    .line 574
    const-string v7, "com.samsung.mirrorlink.acms.pkgnames"

    .line 576
    .local v7, "PKGNAME_AUTHORITY":Ljava/lang/String;
    const-string/jumbo v6, "pkgname"

    .line 577
    .local v6, "BASE_PATH_PKGNAME":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 581
    .local v1, "CONTENT_URI_PKGNAMES":Landroid/net/Uri;
    const-string v10, "com.mirrorlink.android.service.ACCESS_PERMISSION"

    .line 582
    .local v10, "permission":Ljava/lang/String;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v11

    .line 583
    .local v11, "res":I
    const-string v0, "Toast"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check Access Permission  : res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    if-eqz v11, :cond_4b

    .line 611
    :goto_4a
    return v12

    .line 590
    :cond_4b
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 592
    .local v8, "currentPackageName":Ljava/lang/String;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/String;

    aput-object v6, v2, v12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    aput-object v8, v4, v12

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 596
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_82

    .line 597
    const-string v0, "Toast"

    const-string v2, "Cursor is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/4 v12, 0x0

    .local v12, "ret":Z
    goto :goto_4a

    .line 600
    .end local v12    # "ret":Z
    :cond_82
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_c8

    .line 602
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 603
    const-string v0, "Toast"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentPackageName =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const-string v0, "Toast"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db column packagename ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/4 v12, 0x1

    .line 609
    .restart local v12    # "ret":Z
    :goto_c4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_4a

    .line 607
    .end local v12    # "ret":Z
    :cond_c8
    const/4 v12, 0x0

    .restart local v12    # "ret":Z
    goto :goto_c4
.end method

.method private static getService()Landroid/app/INotificationManager;
    .registers 1

    .prologue
    .line 668
    sget-object v0, sService:Landroid/app/INotificationManager;

    if-eqz v0, :cond_7

    .line 669
    sget-object v0, sService:Landroid/app/INotificationManager;

    .line 672
    :goto_6
    return-object v0

    .line 671
    :cond_7
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, sService:Landroid/app/INotificationManager;

    .line 672
    sget-object v0, sService:Landroid/app/INotificationManager;

    goto :goto_6
.end method

.method public static makeText(Landroid/content/Context;II)Landroid/widget/Toast;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 531
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    .line 456
    new-instance v3, Landroid/widget/Toast;

    invoke-direct {v3, p0}, <init>(Landroid/content/Context;)V

    .line 458
    .local v3, "result":Landroid/widget/Toast;
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 464
    .local v0, "inflate":Landroid/view/LayoutInflater;
    const/4 v5, 0x0

    .line 465
    .local v5, "v":Landroid/view/View;
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 466
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x11600bd

    invoke-virtual {v6, v7, v2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v6

    if-eqz v6, :cond_48

    iget v6, v2, Landroid/util/TypedValue;->data:I

    if-eqz v6, :cond_48

    .line 468
    .local v1, "isDeviceDefault":Z
    :goto_26
    if-eqz v1, :cond_4a

    .line 469
    const v6, 0x109015a

    invoke-virtual {v0, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 474
    :goto_2f
    new-instance v6, Landroid/widget/Toast$2;

    invoke-direct {v6, v3}, Landroid/widget/Toast$2;-><init>(Landroid/widget/Toast;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 481
    const v6, 0x102000b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 482
    .local v4, "tv":Landroid/widget/TextView;
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    iput-object v5, v3, mNextView:Landroid/view/View;

    .line 485
    iput p2, v3, mDuration:I

    .line 487
    return-object v3

    .line 466
    .end local v1    # "isDeviceDefault":Z
    .end local v4    # "tv":Landroid/widget/TextView;
    :cond_48
    const/4 v1, 0x0

    goto :goto_26

    .line 471
    .restart local v1    # "isDeviceDefault":Z
    :cond_4a
    const v6, 0x1090117

    invoke-virtual {v0, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    goto :goto_2f
.end method

.method public static twMakeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I

    .prologue
    .line 494
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p0}, <init>(Landroid/content/Context;)V

    .line 496
    .local v1, "result":Landroid/widget/Toast;
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 499
    .local v0, "inflate":Landroid/view/LayoutInflater;
    const/4 v3, 0x0

    .line 501
    .local v3, "v":Landroid/view/View;
    const v4, 0x109015b

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 502
    new-instance v4, Landroid/widget/Toast$3;

    invoke-direct {v4, v1}, Landroid/widget/Toast$3;-><init>(Landroid/widget/Toast;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 509
    const v4, 0x102000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 510
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iput-object v3, v1, mNextView:Landroid/view/View;

    .line 513
    iput p2, v1, mDuration:I

    .line 515
    return-object v1
.end method


# virtual methods
.method public cancel()V
    .registers 5

    .prologue
    .line 310
    sget-boolean v1, localLOGV:Z

    if-eqz v1, :cond_1c

    const-string v1, "Toast"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_1c
    iget-object v1, p0, mTN:Landroid/widget/Toast$TN;

    invoke-virtual {v1}, Landroid/widget/Toast$TN;->hide()V

    .line 314
    :try_start_21
    sget-boolean v1, localLOGV:Z

    if-eqz v1, :cond_3d

    const-string v1, "Toast"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelToast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_3d
    invoke-static {}, getService()Landroid/app/INotificationManager;

    move-result-object v1

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, mTN:Landroid/widget/Toast$TN;

    invoke-interface {v1, v2, v3}, Landroid/app/INotificationManager;->cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_4c} :catch_4d

    .line 320
    :cond_4c
    :goto_4c
    return-void

    .line 316
    :catch_4d
    move-exception v0

    .line 318
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, localLOGV:Z

    if-eqz v1, :cond_4c

    const-string v1, "Toast"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c
.end method

.method public getDuration()I
    .registers 2

    .prologue
    .line 371
    iget v0, p0, mDuration:I

    return v0
.end method

.method public getGravity()I
    .registers 2

    .prologue
    .line 420
    iget-object v0, p0, mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mGravity:I

    return v0
.end method

.method public getHorizontalMargin()F
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    return v0
.end method

.method public getVerticalMargin()F
    .registers 2

    .prologue
    .line 400
    iget-object v0, p0, mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 353
    iget-object v0, p0, mNextView:Landroid/view/View;

    return-object v0
.end method

.method public getWindowParams()Landroid/view/WindowManager$LayoutParams;
    .registers 2

    .prologue
    .line 442
    iget-object v0, p0, mTN:Landroid/widget/Toast$TN;

    # getter for: Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Landroid/widget/Toast$TN;->access$100(Landroid/widget/Toast$TN;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getXOffset()I
    .registers 2

    .prologue
    .line 427
    iget-object v0, p0, mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mX:I

    return v0
.end method

.method public getYOffset()I
    .registers 2

    .prologue
    .line 434
    iget-object v0, p0, mTN:Landroid/widget/Toast$TN;

    iget v0, v0, Landroid/widget/Toast$TN;->mY:I

    return v0
.end method

.method public setDuration(I)V
    .registers 2
    .param p1, "duration"    # I

    .prologue
    .line 362
    iput p1, p0, mDuration:I

    .line 363
    return-void
.end method

.method public setGravity(III)V
    .registers 5
    .param p1, "gravity"    # I
    .param p2, "xOffset"    # I
    .param p3, "yOffset"    # I

    .prologue
    .line 409
    iget-object v0, p0, mTN:Landroid/widget/Toast$TN;

    iput p1, v0, Landroid/widget/Toast$TN;->mGravity:I

    .line 410
    iget-object v0, p0, mTN:Landroid/widget/Toast$TN;

    iput p2, v0, Landroid/widget/Toast$TN;->mX:I

    .line 411
    iget-object v0, p0, mTN:Landroid/widget/Toast$TN;

    iput p3, v0, Landroid/widget/Toast$TN;->mY:I

    .line 412
    return-void
.end method

.method public setIgnoreMultiWindowLayout()V
    .registers 2

    .prologue
    .line 656
    iget-object v0, p0, mTN:Landroid/widget/Toast$TN;

    invoke-virtual {v0}, Landroid/widget/Toast$TN;->setIgnoreMultiWindowLayout()V

    .line 657
    return-void
.end method

.method public setMargin(FF)V
    .registers 4
    .param p1, "horizontalMargin"    # F
    .param p2, "verticalMargin"    # F

    .prologue
    .line 385
    iget-object v0, p0, mTN:Landroid/widget/Toast$TN;

    iput p1, v0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    .line 386
    iget-object v0, p0, mTN:Landroid/widget/Toast$TN;

    iput p2, v0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    .line 387
    return-void
.end method

.method public setShowForAllUsers()V
    .registers 2

    .prologue
    .line 648
    iget-object v0, p0, mTN:Landroid/widget/Toast$TN;

    invoke-virtual {v0}, Landroid/widget/Toast$TN;->setShowForAllUsers()V

    .line 649
    return-void
.end method

.method public setText(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 539
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, setText(Ljava/lang/CharSequence;)V

    .line 540
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 547
    iget-object v1, p0, mNextView:Landroid/view/View;

    if-nez v1, :cond_c

    .line 548
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This Toast was not created with Toast.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 550
    :cond_c
    iget-object v1, p0, mNextView:Landroid/view/View;

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 551
    .local v0, "tv":Landroid/widget/TextView;
    if-nez v0, :cond_21

    .line 552
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This Toast was not created with Toast.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 554
    :cond_21
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 327
    move-object v0, p1

    .line 328
    .local v0, "v":Landroid/view/View;
    new-instance v1, Landroid/widget/Toast$1;

    invoke-direct {v1, p0}, Landroid/widget/Toast$1;-><init>(Landroid/widget/Toast;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 345
    iput-object v0, p0, mNextView:Landroid/view/View;

    .line 346
    return-void
.end method

.method public show()V
    .registers 24

    .prologue
    .line 204
    const-string v3, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 205
    .local v4, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const-string v6, "getToastEnabledState"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 207
    .local v10, "cursorState":Landroid/database/Cursor;
    if-eqz v10, :cond_40

    .line 209
    :try_start_19
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 210
    const-string v3, "getToastEnabledState"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "true"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 212
    .local v12, "enabledState":Z
    if-nez v12, :cond_3d

    .line 213
    const-string v3, "Toast"

    const-string v5, "Knox Customization: Not showing toast"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_39
    .catchall {:try_start_19 .. :try_end_39} :catchall_53

    .line 218
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 302
    .end local v12    # "enabledState":Z
    :cond_3c
    :goto_3c
    return-void

    .line 218
    .restart local v12    # "enabledState":Z
    :cond_3d
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 224
    .end local v12    # "enabledState":Z
    :cond_40
    invoke-direct/range {p0 .. p0}, checkShowingCondition()Z

    move-result v3

    if-nez v3, :cond_58

    .line 225
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_3c

    const-string v3, "Toast"

    const-string/jumbo v5, "showing not allowed"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 218
    :catchall_53
    move-exception v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v3

    .line 228
    :cond_58
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_64

    const-string v3, "Toast"

    const-string/jumbo v5, "showing allowed"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_64
    invoke-direct/range {p0 .. p0}, checkGameHomeWhiteList()Z

    move-result v3

    if-nez v3, :cond_3c

    .line 235
    move-object/from16 v0, p0

    iget-object v3, v0, mNextView:Landroid/view/View;

    if-nez v3, :cond_79

    .line 236
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "setView must have been called"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 241
    :cond_79
    const-string v3, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 242
    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const-string v6, "getToastShowPackageNameState"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 244
    if-eqz v10, :cond_12c

    .line 246
    :try_start_92
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 247
    const-string v3, "getToastShowPackageNameState"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "true"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 249
    .local v16, "nameState":Z
    if-eqz v16, :cond_129

    .line 252
    move-object/from16 v0, p0

    iget-object v3, v0, mNextView:Landroid/view/View;

    if-eqz v3, :cond_129

    .line 253
    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 254
    .local v19, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    .line 255
    .local v15, "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 256
    .local v9, "appName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, mNextView:Landroid/view/View;

    const v5, 0x102000b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 257
    .local v22, "tv":Landroid/widget/TextView;
    if-eqz v22, :cond_129

    if-eqz v9, :cond_129

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_e4
    .catchall {:try_start_92 .. :try_end_e4} :catchall_1bb

    move-result v3

    if-nez v3, :cond_129

    .line 260
    :try_start_e7
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spanned;

    invoke-static {v3}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v17

    .line 262
    .local v17, "oldText":Ljava/lang/String;
    const/16 v3, 0x3e

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 263
    .local v13, "idx1":I
    const/16 v3, 0x3c

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 264
    .local v14, "idx2":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v5, v13, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_129} :catch_192
    .catchall {:try_start_e7 .. :try_end_129} :catchall_1bb

    .line 274
    .end local v9    # "appName":Ljava/lang/String;
    .end local v13    # "idx1":I
    .end local v14    # "idx2":I
    .end local v15    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v17    # "oldText":Ljava/lang/String;
    .end local v19    # "pm":Landroid/content/pm/PackageManager;
    .end local v22    # "tv":Landroid/widget/TextView;
    :cond_129
    :goto_129
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 280
    .end local v16    # "nameState":Z
    :cond_12c
    invoke-static {}, getService()Landroid/app/INotificationManager;

    move-result-object v20

    .line 281
    .local v20, "service":Landroid/app/INotificationManager;
    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v18

    .line 282
    .local v18, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mTN:Landroid/widget/Toast$TN;

    move-object/from16 v21, v0

    .line 283
    .local v21, "tn":Landroid/widget/Toast$TN;
    move-object/from16 v0, p0

    iget-object v3, v0, mNextView:Landroid/view/View;

    move-object/from16 v0, v21

    iput-object v3, v0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    .line 286
    :try_start_146
    move-object/from16 v0, p0

    iget v3, v0, mDuration:I

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2, v3}, Landroid/app/INotificationManager;->enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V
    :try_end_153
    .catch Landroid/os/RemoteException; {:try_start_146 .. :try_end_153} :catch_1c0

    .line 293
    :cond_153
    :goto_153
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 294
    move-object/from16 v0, p0

    iget-object v3, v0, mNextView:Landroid/view/View;

    if-eqz v3, :cond_3c

    .line 295
    move-object/from16 v0, p0

    iget-object v3, v0, mNextView:Landroid/view/View;

    const v5, 0x102000b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 296
    .restart local v22    # "tv":Landroid/widget/TextView;
    if-eqz v22, :cond_3c

    .line 297
    const-string v3, "GATE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<GATE-M>Toast:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</GATE-M>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    .line 265
    .end local v18    # "pkg":Ljava/lang/String;
    .end local v20    # "service":Landroid/app/INotificationManager;
    .end local v21    # "tn":Landroid/widget/Toast$TN;
    .restart local v9    # "appName":Ljava/lang/String;
    .restart local v15    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v16    # "nameState":Z
    .restart local v19    # "pm":Landroid/content/pm/PackageManager;
    :catch_192
    move-exception v11

    .line 267
    .local v11, "e":Ljava/lang/Exception;
    :try_start_193
    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    .line 268
    .restart local v17    # "oldText":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1b9
    .catchall {:try_start_193 .. :try_end_1b9} :catchall_1bb

    goto/16 :goto_129

    .line 274
    .end local v9    # "appName":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v15    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "nameState":Z
    .end local v17    # "oldText":Ljava/lang/String;
    .end local v19    # "pm":Landroid/content/pm/PackageManager;
    .end local v22    # "tv":Landroid/widget/TextView;
    :catchall_1bb
    move-exception v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v3

    .line 287
    .restart local v18    # "pkg":Ljava/lang/String;
    .restart local v20    # "service":Landroid/app/INotificationManager;
    .restart local v21    # "tn":Landroid/widget/Toast$TN;
    :catch_1c0
    move-exception v11

    .line 289
    .local v11, "e":Landroid/os/RemoteException;
    sget-boolean v3, localLOGV:Z

    if-eqz v3, :cond_153

    const-string v3, "Toast"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_153
.end method
