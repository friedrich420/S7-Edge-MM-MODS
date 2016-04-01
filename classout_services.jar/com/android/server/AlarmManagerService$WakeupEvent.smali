.class final Lcom/android/server/AlarmManagerService$WakeupEvent;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WakeupEvent"
.end annotation


# instance fields
.field public action:Ljava/lang/String;

.field public uid:I

.field public when:J


# direct methods
.method public constructor <init>(JILjava/lang/String;)V
    .registers 6
    .param p1, "theTime"    # J
    .param p3, "theUid"    # I
    .param p4, "theAction"    # Ljava/lang/String;

    .prologue
    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    iput-wide p1, p0, when:J

    .line 422
    iput p3, p0, uid:I

    .line 423
    iput-object p4, p0, action:Ljava/lang/String;

    .line 424
    return-void
.end method
