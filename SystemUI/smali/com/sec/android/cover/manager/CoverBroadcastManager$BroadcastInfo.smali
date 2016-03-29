.class public Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;
.super Ljava/lang/Object;
.source "CoverBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/manager/CoverBroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BroadcastInfo"
.end annotation


# instance fields
.field public mItem:Ljava/lang/Object;

.field public mWhen:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 0
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "when"    # J

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;->mItem:Ljava/lang/Object;

    .line 43
    iput-wide p2, p0, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;->mWhen:J

    .line 44
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 48
    const-string v0, "when=%s, item=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;->mWhen:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;->mItem:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
