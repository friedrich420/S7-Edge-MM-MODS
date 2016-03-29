.class public Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;
.super Ljava/lang/Object;
.source "CoverMissedEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/manager/CoverMissedEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MissedEventItem"
.end annotation


# instance fields
.field public final mType:I

.field public final mWhen:J

.field final synthetic this$0:Lcom/sec/android/cover/manager/CoverMissedEventManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/cover/manager/CoverMissedEventManager;IJ)V
    .locals 1
    .param p2, "type"    # I
    .param p3, "when"    # J

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;->this$0:Lcom/sec/android/cover/manager/CoverMissedEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p2, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;->mType:I

    .line 70
    iput-wide p3, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;->mWhen:J

    .line 71
    return-void
.end method
