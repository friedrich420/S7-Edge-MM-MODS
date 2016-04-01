.class public final Lcom/android/server/notification/NotificationManagerService$DumpFilter;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DumpFilter"
.end annotation


# instance fields
.field public filtered:Z

.field public pkgFilter:Ljava/lang/String;

.field public redact:Z

.field public since:J

.field public stats:Z

.field public zen:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 4220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4221
    const/4 v0, 0x0

    iput-boolean v0, p0, filtered:Z

    .line 4226
    const/4 v0, 0x1

    iput-boolean v0, p0, redact:Z

    return-void
.end method

.method public static parseFromArguments([Ljava/lang/String;)Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .registers 8
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 4229
    new-instance v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    invoke-direct {v2}, <init>()V

    .line 4230
    .local v2, "filter":Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    const/4 v1, 0x0

    .local v1, "ai":I
    :goto_7
    array-length v3, p0

    if-ge v1, v3, :cond_97

    .line 4231
    aget-object v0, p0, v1

    .line 4232
    .local v0, "a":Ljava/lang/String;
    const-string v3, "--noredact"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    const-string v3, "--reveal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 4233
    :cond_1c
    const/4 v3, 0x0

    iput-boolean v3, v2, redact:Z

    .line 4230
    :cond_1f
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4234
    :cond_22
    const-string/jumbo v3, "p"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    const-string/jumbo v3, "pkg"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    const-string v3, "--package"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 4235
    :cond_3c
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1f

    .line 4236
    add-int/lit8 v1, v1, 0x1

    .line 4237
    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, pkgFilter:Ljava/lang/String;

    .line 4238
    iget-object v3, v2, pkgFilter:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 4239
    const/4 v3, 0x0

    iput-object v3, v2, pkgFilter:Ljava/lang/String;

    goto :goto_1f

    .line 4241
    :cond_5b
    iput-boolean v6, v2, filtered:Z

    goto :goto_1f

    .line 4244
    :cond_5e
    const-string v3, "--zen"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6f

    const-string/jumbo v3, "zen"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 4245
    :cond_6f
    iput-boolean v6, v2, filtered:Z

    .line 4246
    iput-boolean v6, v2, zen:Z

    goto :goto_1f

    .line 4247
    :cond_74
    const-string v3, "--stats"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 4248
    iput-boolean v6, v2, stats:Z

    .line 4249
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_92

    .line 4250
    add-int/lit8 v1, v1, 0x1

    .line 4251
    aget-object v3, p0, v1

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v2, since:J

    goto :goto_1f

    .line 4253
    :cond_92
    const-wide/16 v4, 0x0

    iput-wide v4, v2, since:J

    goto :goto_1f

    .line 4257
    .end local v0    # "a":Ljava/lang/String;
    :cond_97
    return-object v2
.end method


# virtual methods
.method public matches(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v0, 0x1

    .line 4267
    iget-boolean v1, p0, filtered:Z

    if-nez v1, :cond_6

    .line 4268
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-boolean v1, p0, zen:Z

    if-nez v1, :cond_5

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_16
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public matches(Landroid/service/notification/StatusBarNotification;)Z
    .registers 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v0, 0x1

    .line 4261
    iget-boolean v1, p0, filtered:Z

    if-nez v1, :cond_6

    .line 4262
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-boolean v1, p0, zen:Z

    if-nez v1, :cond_5

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_20
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public matches(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 4272
    iget-boolean v1, p0, filtered:Z

    if-nez v1, :cond_6

    .line 4273
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-boolean v1, p0, zen:Z

    if-nez v1, :cond_5

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, pkgFilter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_18
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 4278
    iget-boolean v0, p0, stats:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, "stats"

    :goto_9
    return-object v0

    :cond_a
    iget-boolean v0, p0, zen:Z

    if-eqz v0, :cond_12

    const-string/jumbo v0, "zen"

    goto :goto_9

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, pkgFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method
