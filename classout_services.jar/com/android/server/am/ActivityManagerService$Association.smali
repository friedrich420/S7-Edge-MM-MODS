.class final Lcom/android/server/am/ActivityManagerService$Association;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Association"
.end annotation


# instance fields
.field mCount:I

.field mNesting:I

.field final mSourceProcess:Ljava/lang/String;

.field final mSourceUid:I

.field mStartTime:J

.field final mTargetComponent:Landroid/content/ComponentName;

.field final mTargetProcess:Ljava/lang/String;

.field final mTargetUid:I

.field mTime:J


# direct methods
.method constructor <init>(ILjava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;)V
    .registers 6
    .param p1, "sourceUid"    # I
    .param p2, "sourceProcess"    # Ljava/lang/String;
    .param p3, "targetUid"    # I
    .param p4, "targetComponent"    # Landroid/content/ComponentName;
    .param p5, "targetProcess"    # Ljava/lang/String;

    .prologue
    .line 1336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1337
    iput p1, p0, mSourceUid:I

    .line 1338
    iput-object p2, p0, mSourceProcess:Ljava/lang/String;

    .line 1339
    iput p3, p0, mTargetUid:I

    .line 1340
    iput-object p4, p0, mTargetComponent:Landroid/content/ComponentName;

    .line 1341
    iput-object p5, p0, mTargetProcess:Ljava/lang/String;

    .line 1342
    return-void
.end method
