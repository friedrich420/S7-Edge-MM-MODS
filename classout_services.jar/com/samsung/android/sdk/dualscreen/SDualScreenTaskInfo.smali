.class public Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;
.super Ljava/lang/Object;
.source "SDualScreenTaskInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field static final UNSPECIFIED_TASK_ID:I = -0x1


# instance fields
.field private mChildTaskId:I

.field private mFixed:Z

.field private mParentTaskId:I

.field private mScreen:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

.field private mTaskId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v1, p0, mTaskId:I

    .line 31
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->UNKNOWN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    iput-object v0, p0, mScreen:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, mFixed:Z

    .line 35
    iput v1, p0, mChildTaskId:I

    .line 36
    iput v1, p0, mParentTaskId:I

    .line 40
    return-void
.end method

.method constructor <init>(I)V
    .registers 4
    .param p1, "taskId"    # I

    .prologue
    const/4 v1, -0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v1, p0, mTaskId:I

    .line 31
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->UNKNOWN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    iput-object v0, p0, mScreen:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, mFixed:Z

    .line 35
    iput v1, p0, mChildTaskId:I

    .line 36
    iput v1, p0, mParentTaskId:I

    .line 43
    iput p1, p0, mTaskId:I

    .line 44
    return-void
.end method


# virtual methods
.method public getChildCoupledTaskId()I
    .registers 2

    .prologue
    .line 79
    iget v0, p0, mChildTaskId:I

    return v0
.end method

.method public getParentCoupledTaskId()I
    .registers 2

    .prologue
    .line 88
    iget v0, p0, mParentTaskId:I

    return v0
.end method

.method public getScreen()Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, mScreen:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    return-object v0
.end method

.method public getTaskId()I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, mTaskId:I

    return v0
.end method

.method public isCoupled()Z
    .registers 2

    .prologue
    .line 97
    iget v0, p0, mParentTaskId:I

    if-gez v0, :cond_8

    iget v0, p0, mChildTaskId:I

    if-ltz v0, :cond_a

    .line 98
    :cond_8
    const/4 v0, 0x1

    .line 100
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isFixed()Z
    .registers 2

    .prologue
    .line 61
    iget-boolean v0, p0, mFixed:Z

    return v0
.end method

.method setChildCoupledTaskId(I)V
    .registers 2
    .param p1, "taskId"    # I

    .prologue
    .line 114
    iput p1, p0, mChildTaskId:I

    .line 115
    return-void
.end method

.method setFixed(Z)V
    .registers 2
    .param p1, "fixed"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, mFixed:Z

    .line 111
    return-void
.end method

.method setParentCoupledTaskId(I)V
    .registers 2
    .param p1, "taskId"    # I

    .prologue
    .line 118
    iput p1, p0, mParentTaskId:I

    .line 119
    return-void
.end method

.method setScreen(Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;)V
    .registers 2
    .param p1, "screen"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .prologue
    .line 106
    iput-object p1, p0, mScreen:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .line 107
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 124
    .local v0, "b":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/samsung/android/sdk/dualscreen/SDualScreenTaskInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string/jumbo v1, "mTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string/jumbo v1, "mFixed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mFixed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string/jumbo v1, "mScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mScreen:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget v1, p0, mParentTaskId:I

    if-eq v1, v3, :cond_71

    .line 129
    const-string/jumbo v1, "mParentTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mParentTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :cond_71
    iget v1, p0, mChildTaskId:I

    if-eq v1, v3, :cond_87

    .line 132
    const-string/jumbo v1, "mChildTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mChildTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_87
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
