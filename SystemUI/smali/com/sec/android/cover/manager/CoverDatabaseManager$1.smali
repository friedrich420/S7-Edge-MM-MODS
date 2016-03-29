.class Lcom/sec/android/cover/manager/CoverDatabaseManager$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "CoverDatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/manager/CoverDatabaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/manager/CoverDatabaseManager;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/manager/CoverDatabaseManager;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverDatabaseManager$1;->this$0:Lcom/sec/android/cover/manager/CoverDatabaseManager;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Landroid/net/Uri;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x2

    .line 27
    # getter for: Lcom/sec/android/cover/manager/CoverDatabaseManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onContentChanged : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "dbKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/cover/manager/CoverDatabaseManager$1;->this$0:Lcom/sec/android/cover/manager/CoverDatabaseManager;

    # getter for: Lcom/sec/android/cover/manager/CoverDatabaseManager;->mHashIntValues:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->access$100(Lcom/sec/android/cover/manager/CoverDatabaseManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v6, :cond_0

    .line 32
    iget-object v2, p0, Lcom/sec/android/cover/manager/CoverDatabaseManager$1;->this$0:Lcom/sec/android/cover/manager/CoverDatabaseManager;

    # getter for: Lcom/sec/android/cover/manager/CoverDatabaseManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->access$200(Lcom/sec/android/cover/manager/CoverDatabaseManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v2, p0, Lcom/sec/android/cover/manager/CoverDatabaseManager$1;->this$0:Lcom/sec/android/cover/manager/CoverDatabaseManager;

    # getter for: Lcom/sec/android/cover/manager/CoverDatabaseManager;->mHashIntValues:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->access$100(Lcom/sec/android/cover/manager/CoverDatabaseManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v0, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 34
    .local v1, "value":I
    iget-object v2, p0, Lcom/sec/android/cover/manager/CoverDatabaseManager$1;->this$0:Lcom/sec/android/cover/manager/CoverDatabaseManager;

    # getter for: Lcom/sec/android/cover/manager/CoverDatabaseManager;->mHashIntValues:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->access$100(Lcom/sec/android/cover/manager/CoverDatabaseManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    # getter for: Lcom/sec/android/cover/manager/CoverDatabaseManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value(int) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .end local v1    # "value":I
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/manager/CoverDatabaseManager$1;->this$0:Lcom/sec/android/cover/manager/CoverDatabaseManager;

    # getter for: Lcom/sec/android/cover/manager/CoverDatabaseManager;->mHashStringValues:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->access$300(Lcom/sec/android/cover/manager/CoverDatabaseManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v6, :cond_1

    .line 38
    iget-object v2, p0, Lcom/sec/android/cover/manager/CoverDatabaseManager$1;->this$0:Lcom/sec/android/cover/manager/CoverDatabaseManager;

    # getter for: Lcom/sec/android/cover/manager/CoverDatabaseManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->access$200(Lcom/sec/android/cover/manager/CoverDatabaseManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/cover/manager/CoverDatabaseManager$1;->this$0:Lcom/sec/android/cover/manager/CoverDatabaseManager;

    # getter for: Lcom/sec/android/cover/manager/CoverDatabaseManager;->mHashStringValues:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->access$300(Lcom/sec/android/cover/manager/CoverDatabaseManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    # getter for: Lcom/sec/android/cover/manager/CoverDatabaseManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value(String) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 44
    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    # getter for: Lcom/sec/android/cover/manager/CoverDatabaseManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", unknown type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
