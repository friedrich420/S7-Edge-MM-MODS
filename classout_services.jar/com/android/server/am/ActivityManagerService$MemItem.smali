.class final Lcom/android/server/am/ActivityManagerService$MemItem;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MemItem"
.end annotation


# instance fields
.field final hasActivities:Z

.field final id:I

.field final isProc:Z

.field final label:Ljava/lang/String;

.field final pss:J

.field final shortLabel:Ljava/lang/String;

.field subitems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityManagerService$MemItem;",
            ">;"
        }
    .end annotation
.end field

.field final swap_pss:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJI)V
    .registers 9
    .param p1, "_label"    # Ljava/lang/String;
    .param p2, "_shortLabel"    # Ljava/lang/String;
    .param p3, "_pss"    # J
    .param p5, "_swap_pss"    # J
    .param p7, "_id"    # I

    .prologue
    const/4 v0, 0x0

    .line 20330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20331
    iput-boolean v0, p0, isProc:Z

    .line 20332
    iput-object p1, p0, label:Ljava/lang/String;

    .line 20333
    iput-object p2, p0, shortLabel:Ljava/lang/String;

    .line 20334
    iput-wide p3, p0, pss:J

    .line 20335
    iput-wide p5, p0, swap_pss:J

    .line 20336
    iput p7, p0, id:I

    .line 20337
    iput-boolean v0, p0, hasActivities:Z

    .line 20338
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJIZ)V
    .registers 10
    .param p1, "_label"    # Ljava/lang/String;
    .param p2, "_shortLabel"    # Ljava/lang/String;
    .param p3, "_pss"    # J
    .param p5, "_swap_pss"    # J
    .param p7, "_id"    # I
    .param p8, "_hasActivities"    # Z

    .prologue
    .line 20320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20321
    const/4 v0, 0x1

    iput-boolean v0, p0, isProc:Z

    .line 20322
    iput-object p1, p0, label:Ljava/lang/String;

    .line 20323
    iput-object p2, p0, shortLabel:Ljava/lang/String;

    .line 20324
    iput-wide p3, p0, pss:J

    .line 20325
    iput-wide p5, p0, swap_pss:J

    .line 20326
    iput p7, p0, id:I

    .line 20327
    iput-boolean p8, p0, hasActivities:Z

    .line 20328
    return-void
.end method
