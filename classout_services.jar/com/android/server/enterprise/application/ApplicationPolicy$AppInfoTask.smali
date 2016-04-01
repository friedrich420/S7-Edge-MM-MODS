.class Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;
.super Ljava/lang/Object;
.source "ApplicationPolicy.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCmd:Ljava/lang/String;

.field private final mUsage:J


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .registers 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "usage"    # J

    .prologue
    .line 5400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5401
    iput-object p1, p0, mCmd:Ljava/lang/String;

    .line 5402
    iput-wide p2, p0, mUsage:J

    .line 5403
    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;

    .prologue
    .line 5390
    iget-object v0, p0, mCmd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;

    .prologue
    .line 5390
    iget-wide v0, p0, mUsage:J

    return-wide v0
.end method


# virtual methods
.method public compareTo(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)I
    .registers 6
    .param p1, "other"    # Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;

    .prologue
    .line 5432
    iget-wide v0, p0, mUsage:J

    iget-wide v2, p1, mUsage:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    .line 5433
    iget-object v0, p0, mCmd:Ljava/lang/String;

    iget-object v1, p1, mCmd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 5435
    :goto_10
    return v0

    :cond_11
    iget-wide v0, p0, mUsage:J

    iget-wide v2, p1, mUsage:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    neg-int v0, v0

    goto :goto_10
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 5390
    check-cast p1, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, compareTo(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)I

    move-result v0

    return v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 5411
    iget-object v0, p0, mCmd:Ljava/lang/String;

    return-object v0
.end method

.method getUsage()J
    .registers 3

    .prologue
    .line 5420
    iget-wide v0, p0, mUsage:J

    return-wide v0
.end method
