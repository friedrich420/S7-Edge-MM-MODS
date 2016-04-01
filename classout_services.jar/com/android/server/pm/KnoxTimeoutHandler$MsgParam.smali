.class Lcom/android/server/pm/KnoxTimeoutHandler$MsgParam;
.super Ljava/lang/Object;
.source "KnoxTimeoutHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/KnoxTimeoutHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MsgParam"
.end annotation


# instance fields
.field fullscreen:Z

.field isMutiwindowRecord:Z

.field showWhenLocked:Z

.field final synthetic this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

.field userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/KnoxTimeoutHandler;IZZ)V
    .registers 6
    .param p2, "userId"    # I
    .param p3, "fullscreen"    # Z
    .param p4, "showWhenLocked"    # Z

    .prologue
    const/4 v0, 0x0

    .line 93
    iput-object p1, p0, this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput v0, p0, userId:I

    .line 88
    iput-boolean v0, p0, fullscreen:Z

    .line 89
    iput-boolean v0, p0, showWhenLocked:Z

    .line 90
    iput-boolean v0, p0, isMutiwindowRecord:Z

    .line 94
    iput p2, p0, userId:I

    .line 95
    iput-boolean p3, p0, fullscreen:Z

    .line 96
    iput-boolean p4, p0, showWhenLocked:Z

    .line 97
    iput-boolean v0, p0, isMutiwindowRecord:Z

    .line 98
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/KnoxTimeoutHandler;IZZZ)V
    .registers 7
    .param p2, "userId"    # I
    .param p3, "fullscreen"    # Z
    .param p4, "showWhenLocked"    # Z
    .param p5, "isMutiwindowRecord"    # Z

    .prologue
    const/4 v0, 0x0

    .line 100
    iput-object p1, p0, this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput v0, p0, userId:I

    .line 88
    iput-boolean v0, p0, fullscreen:Z

    .line 89
    iput-boolean v0, p0, showWhenLocked:Z

    .line 90
    iput-boolean v0, p0, isMutiwindowRecord:Z

    .line 101
    iput p2, p0, userId:I

    .line 102
    iput-boolean p3, p0, fullscreen:Z

    .line 103
    iput-boolean p4, p0, showWhenLocked:Z

    .line 104
    iput-boolean p5, p0, isMutiwindowRecord:Z

    .line 105
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MsgParam] userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fullscreen is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, fullscreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " showWhenlocked is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, showWhenLocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
