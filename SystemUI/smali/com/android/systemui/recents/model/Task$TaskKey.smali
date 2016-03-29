.class public Lcom/android/systemui/recents/model/Task$TaskKey;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskKey"
.end annotation


# instance fields
.field public final baseIntent:Landroid/content/Intent;

.field public firstActiveTime:J

.field public final id:I

.field public lastActiveTime:J

.field final mComponentNameKey:Lcom/android/systemui/recents/model/Task$ComponentNameKey;

.field public origActivity:Landroid/content/ComponentName;

.field public stackId:I

.field public final userId:I


# direct methods
.method public constructor <init>(IILandroid/content/Intent;IJJ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "stackId"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "userId"    # I
    .param p5, "firstActiveTime"    # J
    .param p7, "lastActiveTime"    # J

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lcom/android/systemui/recents/model/Task$ComponentNameKey;

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Lcom/android/systemui/recents/model/Task$ComponentNameKey;-><init>(Landroid/content/ComponentName;I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->mComponentNameKey:Lcom/android/systemui/recents/model/Task$ComponentNameKey;

    .line 102
    iput p1, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    .line 103
    iput p2, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    .line 104
    iput-object p3, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 105
    iput p4, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    .line 106
    iput-wide p5, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->firstActiveTime:J

    .line 107
    iput-wide p7, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->lastActiveTime:J

    .line 108
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 127
    instance-of v2, p1, Lcom/android/systemui/recents/model/Task$TaskKey;

    if-nez v2, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 130
    check-cast v0, Lcom/android/systemui/recents/model/Task$TaskKey;

    .line 131
    .local v0, "otherKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    iget v2, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v3, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    iget v3, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    iget v3, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getComponentNameKey()Lcom/android/systemui/recents/model/Task$ComponentNameKey;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->mComponentNameKey:Lcom/android/systemui/recents/model/Task$ComponentNameKey;

    return-object v0
.end method

.method public getOrigActivity()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->origActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 136
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setOrigActivity(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "oa"    # Landroid/content/ComponentName;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->origActivity:Landroid/content/ComponentName;

    .line 113
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task.Key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "u: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->lastActiveTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
