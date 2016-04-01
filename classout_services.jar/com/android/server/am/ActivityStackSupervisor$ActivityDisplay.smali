.class Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActivityDisplay"
.end annotation


# instance fields
.field mDisplay:Landroid/view/Display;

.field mDisplayId:I

.field mDisplayInfo:Landroid/view/DisplayInfo;

.field mGlobalTaskHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

.field final mZoneStacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;)V
    .registers 3

    .prologue
    .line 8426
    iput-object p1, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8413
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    .line 8417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mStacks:Ljava/util/ArrayList;

    .line 8423
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mZoneStacks:Landroid/util/SparseArray;

    .line 8427
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .registers 5
    .param p2, "displayId"    # I

    .prologue
    .line 8431
    iput-object p1, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8413
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v1, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    .line 8417
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mStacks:Ljava/util/ArrayList;

    .line 8423
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, mZoneStacks:Landroid/util/SparseArray;

    .line 8432
    iget-object v1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 8433
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_23

    .line 8437
    :goto_22
    return-void

    .line 8436
    :cond_23
    invoke-virtual {p0, v0}, init(Landroid/view/Display;)V

    goto :goto_22
.end method


# virtual methods
.method attachActivities(Lcom/android/server/am/ActivityStack;)V
    .registers 3
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 8455
    iget-object v0, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8456
    return-void
.end method

.method detachActivitiesLocked(Lcom/android/server/am/ActivityStack;)V
    .registers 5
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 8461
    iget-object v2, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8464
    iget-object v2, p0, mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_d
    if-ltz v0, :cond_23

    .line 8465
    iget-object v2, p0, mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 8466
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-ne v2, p1, :cond_20

    .line 8467
    iget-object v2, p0, mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 8464
    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 8472
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    :cond_23
    return-void
.end method

.method getBounds(Landroid/graphics/Point;)V
    .registers 4
    .param p1, "bounds"    # Landroid/graphics/Point;

    .prologue
    .line 8475
    iget-object v0, p0, mDisplay:Landroid/view/Display;

    iget-object v1, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 8476
    iget-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->appWidth:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 8477
    iget-object v0, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->appHeight:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 8478
    return-void
.end method

.method hasVisibleBehindActivity()Z
    .registers 2

    .prologue
    .line 8485
    iget-object v0, p0, mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method init(Landroid/view/Display;)V
    .registers 4
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 8440
    iput-object p1, p0, mDisplay:Landroid/view/Display;

    .line 8441
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iput v0, p0, mDisplayId:I

    .line 8442
    iget-object v0, p0, mDisplay:Landroid/view/Display;

    iget-object v1, p0, mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 8448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mGlobalTaskHistory:Ljava/util/ArrayList;

    .line 8450
    return-void
.end method

.method setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V
    .registers 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 8481
    iput-object p1, p0, mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

    .line 8482
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 8490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityDisplay={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " numStacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
