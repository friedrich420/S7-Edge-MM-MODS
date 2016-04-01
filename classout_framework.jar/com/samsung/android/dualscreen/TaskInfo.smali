.class public Lcom/samsung/android/dualscreen/TaskInfo;
.super Ljava/lang/Object;
.source "TaskInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final APPLICATION_TYPE:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/dualscreen/TaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final HOME_TYPE:I = 0x1

.field public static final RECENTS_TYPE:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field public static final UNSPECIFIED_TASK_ID:I = -0x1


# instance fields
.field public canMoveTaskToScreen:Z

.field private mChildTaskId:I

.field private mFixed:Z

.field private mParentTaskId:I

.field private mScreen:Lcom/samsung/android/dualscreen/DualScreen;

.field private mTaskId:I

.field private mTaskType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Lcom/samsung/android/dualscreen/TaskInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    .line 191
    new-instance v0, Lcom/samsung/android/dualscreen/TaskInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/dualscreen/TaskInfo$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v1, p0, mTaskId:I

    .line 39
    iput v2, p0, mTaskType:I

    .line 40
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    iput-object v0, p0, mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    .line 41
    iput-boolean v2, p0, mFixed:Z

    .line 43
    iput v1, p0, mChildTaskId:I

    .line 44
    iput v1, p0, mParentTaskId:I

    .line 48
    iput-boolean v2, p0, canMoveTaskToScreen:Z

    .line 51
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .param p1, "taskId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v1, p0, mTaskId:I

    .line 39
    iput v2, p0, mTaskType:I

    .line 40
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    iput-object v0, p0, mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    .line 41
    iput-boolean v2, p0, mFixed:Z

    .line 43
    iput v1, p0, mChildTaskId:I

    .line 44
    iput v1, p0, mParentTaskId:I

    .line 48
    iput-boolean v2, p0, canMoveTaskToScreen:Z

    .line 54
    iput p1, p0, mTaskId:I

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v1, p0, mTaskId:I

    .line 39
    iput v2, p0, mTaskType:I

    .line 40
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    iput-object v0, p0, mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    .line 41
    iput-boolean v2, p0, mFixed:Z

    .line 43
    iput v1, p0, mChildTaskId:I

    .line 44
    iput v1, p0, mParentTaskId:I

    .line 48
    iput-boolean v2, p0, canMoveTaskToScreen:Z

    .line 58
    invoke-virtual {p0, p1}, readFromParcel(Landroid/os/Parcel;)V

    .line 59
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public getChildCoupledTaskId()I
    .registers 2

    .prologue
    .line 100
    iget v0, p0, mChildTaskId:I

    return v0
.end method

.method public getParentCoupledTaskId()I
    .registers 2

    .prologue
    .line 104
    iget v0, p0, mParentTaskId:I

    return v0
.end method

.method public getScreen()Lcom/samsung/android/dualscreen/DualScreen;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    return-object v0
.end method

.method public getTaskId()I
    .registers 2

    .prologue
    .line 65
    iget v0, p0, mTaskId:I

    return v0
.end method

.method public getTaskType()I
    .registers 2

    .prologue
    .line 72
    iget v0, p0, mTaskType:I

    return v0
.end method

.method public isCoupled()Z
    .registers 2

    .prologue
    .line 108
    iget v0, p0, mParentTaskId:I

    if-gez v0, :cond_8

    iget v0, p0, mChildTaskId:I

    if-ltz v0, :cond_a

    .line 109
    :cond_8
    const/4 v0, 0x1

    .line 111
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isFixed()Z
    .registers 2

    .prologue
    .line 89
    iget-boolean v0, p0, mFixed:Z

    return v0
.end method

.method public isHomeTask()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 79
    iget v1, p0, mTaskType:I

    if-ne v1, v0, :cond_6

    .line 82
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mTaskId:I

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mTaskType:I

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 179
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/dualscreen/DualScreen;

    iput-object v0, p0, mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    .line 181
    :cond_1d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_25

    .line 182
    iput-boolean v1, p0, mFixed:Z

    .line 184
    :cond_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mChildTaskId:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mParentTaskId:I

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_39

    .line 187
    iput-boolean v1, p0, canMoveTaskToScreen:Z

    .line 189
    :cond_39
    return-void
.end method

.method public setChildCoupledTaskId(I)V
    .registers 2
    .param p1, "taskId"    # I

    .prologue
    .line 136
    iput p1, p0, mChildTaskId:I

    .line 137
    return-void
.end method

.method public setFixed(Z)V
    .registers 2
    .param p1, "fixed"    # Z

    .prologue
    .line 132
    iput-boolean p1, p0, mFixed:Z

    .line 133
    return-void
.end method

.method public setParentCoupledTaskId(I)V
    .registers 2
    .param p1, "taskId"    # I

    .prologue
    .line 140
    iput p1, p0, mParentTaskId:I

    .line 141
    return-void
.end method

.method public setScreen(Lcom/samsung/android/dualscreen/DualScreen;)V
    .registers 2
    .param p1, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 125
    iput-object p1, p0, mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    .line 126
    return-void
.end method

.method public setTaskType(I)V
    .registers 2
    .param p1, "taskType"    # I

    .prologue
    .line 118
    iput p1, p0, mTaskType:I

    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 206
    .local v0, "b":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/samsung/android/dualscreen/TaskInfo;

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

    .line 207
    const-string/jumbo v1, "mTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const-string/jumbo v1, "mTaskType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mTaskType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string/jumbo v1, "mScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string/jumbo v1, "mFixed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mFixed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string v1, "mChildTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mChildTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const-string/jumbo v1, "mParentTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mParentTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string v1, "canMoveTaskToScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, canMoveTaskToScreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 150
    iget v0, p0, mTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget v0, p0, mTaskType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object v0, p0, mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    if-eqz v0, :cond_31

    .line 154
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget-object v0, p0, mScreen:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/dualscreen/DualScreen;->writeToParcel(Landroid/os/Parcel;I)V

    .line 160
    :goto_18
    iget-boolean v0, p0, mFixed:Z

    if-eqz v0, :cond_35

    .line 161
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    :goto_1f
    iget v0, p0, mChildTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget v0, p0, mParentTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget-boolean v0, p0, canMoveTaskToScreen:Z

    if-eqz v0, :cond_39

    .line 169
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    :goto_30
    return-void

    .line 157
    :cond_31
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18

    .line 163
    :cond_35
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1f

    .line 171
    :cond_39
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_30
.end method
