.class final Lcom/android/server/media/MediaSessionService$UserRecord;
.super Ljava/lang/Object;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UserRecord"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLastMediaButtonReceiver:Landroid/app/PendingIntent;

.field private mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

.field private final mSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService;Landroid/content/Context;I)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I

    .prologue
    .line 565
    iput-object p1, p0, this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mSessions:Ljava/util/ArrayList;

    .line 566
    iput-object p2, p0, mContext:Landroid/content/Context;

    .line 567
    iput p3, p0, mUserId:I

    .line 568
    invoke-direct {p0}, restoreMediaButtonReceiver()V

    .line 569
    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/content/ComponentName;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$UserRecord;

    .prologue
    .line 558
    iget-object v0, p0, mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/media/MediaSessionService$UserRecord;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$UserRecord;

    .prologue
    .line 558
    iget v0, p0, mUserId:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$UserRecord;

    .prologue
    .line 558
    iget-object v0, p0, mLastMediaButtonReceiver:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/media/MediaSessionService$UserRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$UserRecord;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    .line 558
    iput-object p1, p0, mLastMediaButtonReceiver:Landroid/app/PendingIntent;

    return-object p1
.end method

.method private restoreMediaButtonReceiver()V
    .registers 6

    .prologue
    .line 612
    iget-object v2, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1000(Lcom/android/server/media/MediaSessionService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "media_button_receiver"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 614
    .local v1, "receiverName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 615
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 616
    .local v0, "eventReceiver":Landroid/content/ComponentName;
    if-nez v0, :cond_1b

    .line 622
    .end local v0    # "eventReceiver":Landroid/content/ComponentName;
    :cond_1a
    :goto_1a
    return-void

    .line 620
    .restart local v0    # "eventReceiver":Landroid/content/ComponentName;
    :cond_1b
    iput-object v0, p0, mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

    goto :goto_1a
.end method


# virtual methods
.method public addSessionLocked(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 3
    .param p1, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 590
    iget-object v0, p0, mSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    return-void
.end method

.method public destroyLocked()V
    .registers 4

    .prologue
    .line 579
    iget-object v2, p0, mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 580
    iget-object v2, p0, mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecord;

    .line 581
    .local v1, "session":Lcom/android/server/media/MediaSessionRecord;
    iget-object v2, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->destroySessionLocked(Lcom/android/server/media/MediaSessionRecord;)V
    invoke-static {v2, v1}, Lcom/android/server/media/MediaSessionService;->access$900(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionRecord;)V

    .line 579
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 583
    .end local v1    # "session":Lcom/android/server/media/MediaSessionRecord;
    :cond_1a
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 598
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Record for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 600
    .local v1, "indent":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MediaButtonReceiver:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mLastMediaButtonReceiver:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 601
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Restored ButtonReceiver:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 602
    iget-object v3, p0, mSessions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 603
    .local v2, "size":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Sessions:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 604
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_88
    if-ge v0, v2, :cond_ad

    .line 607
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, mSessions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 604
    add-int/lit8 v0, v0, 0x1

    goto :goto_88

    .line 609
    :cond_ad
    return-void
.end method

.method public getSessionsLocked()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 586
    iget-object v0, p0, mSessions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public removeSessionLocked(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 3
    .param p1, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 594
    iget-object v0, p0, mSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 595
    return-void
.end method

.method public startLocked()V
    .registers 1

    .prologue
    .line 572
    return-void
.end method

.method public stopLocked()V
    .registers 1

    .prologue
    .line 576
    return-void
.end method
