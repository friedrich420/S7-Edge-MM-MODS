.class public Lcom/samsung/android/coreapps/sdk/easysignup/SimpleSharingManager;
.super Ljava/lang/Object;
.source "SimpleSharingManager.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.coreapps.rshare"

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-string v0, "content://com.samsung.android.coreapps.rshare/recent_share_contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isRecentContactExisted(Landroid/content/Context;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 18
    const/4 v7, 0x0

    .line 19
    .local v7, "result":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 20
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1b

    .line 21
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_18

    .line 22
    const/4 v7, 0x1

    .line 24
    :cond_18
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 26
    :cond_1b
    return v7
.end method
