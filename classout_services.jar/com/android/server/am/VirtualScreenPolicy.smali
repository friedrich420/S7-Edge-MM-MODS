.class public Lcom/android/server/am/VirtualScreenPolicy;
.super Ljava/lang/Object;
.source "VirtualScreenPolicy.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final PERMISSION_MANAGE_VIRTUAL_SCREEN:Ljava/lang/String; = "com.samsung.android.virtualscreen.permission.MANAGE_VIRTUAL_SCREEN"

.field private static final TAG:Ljava/lang/String; = "VirtualScreenPolicy"

.field private static mWithBindingDisplay:Z


# instance fields
.field private mAm:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, 0x1

    sput-boolean v0, mWithBindingDisplay:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    .line 42
    iput-object p1, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    .line 43
    return-void
.end method

.method public static withBindingDisplay()Z
    .registers 1

    .prologue
    .line 140
    sget-boolean v0, mWithBindingDisplay:Z

    return v0
.end method


# virtual methods
.method public applyVirtualScreenAttrs(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/VirtualScreenAttrs;
    .registers 8
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 46
    new-instance v0, Lcom/android/server/am/VirtualScreenAttrs;

    invoke-direct {v0}, Lcom/android/server/am/VirtualScreenAttrs;-><init>()V

    .line 48
    .local v0, "attrs":Lcom/android/server/am/VirtualScreenAttrs;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 49
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getVirtualScreenParams()Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;

    move-result-object v1

    .line 50
    .local v1, "params":Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;
    if-eqz v1, :cond_21

    iget v2, v1, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mDisplayId:I

    if-lez v2, :cond_21

    .line 51
    iget v2, v1, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mDisplayId:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/VirtualScreenAttrs;->setDisplayId(I)V

    .line 52
    iget v2, v1, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mDisplayId:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/VirtualScreenAttrs;->setBaseDisplayId(I)V

    .line 55
    :cond_21
    if-eqz p2, :cond_38

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    if-eqz v2, :cond_38

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreenAttrs;->getDisplayId()I

    move-result v2

    if-lez v2, :cond_38

    .line 57
    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreenAttrs;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/am/VirtualScreenAttrs;->setDisplayId(I)V

    .line 60
    :cond_38
    if-eqz v1, :cond_44

    iget v2, v1, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_44

    .line 61
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/am/VirtualScreenAttrs;->setBaseActivity(Z)V

    .line 65
    .end local v1    # "params":Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;
    :cond_44
    const-string v2, "VirtualScreenPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyVirtualScreenAttrs attrs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-object v0
.end method

.method public relinquishVirtualScreenAttrs(Lcom/android/server/am/ActivityRecord;)V
    .registers 14
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v11, 0x1

    .line 106
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 107
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    invoke-virtual {v9}, Lcom/android/server/am/VirtualScreenAttrs;->getBaseDisplayId()I

    move-result v1

    .line 108
    .local v1, "baseDisplayId":I
    if-lez v1, :cond_3f

    .line 109
    iget-object v9, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v11, :cond_40

    .line 110
    iget-object v9, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 111
    .local v0, "activityNdx":I
    iget-object v9, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .line 112
    .local v7, "topNdx":I
    if-ge v0, v7, :cond_3f

    .line 113
    iget-object v9, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 114
    .local v2, "next":Lcom/android/server/am/ActivityRecord;
    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    invoke-virtual {v9, v1}, Lcom/android/server/am/VirtualScreenAttrs;->setBaseDisplayId(I)V

    .line 115
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    invoke-virtual {v9}, Lcom/android/server/am/VirtualScreenAttrs;->getBaseActivity()Z

    move-result v9

    if-eqz v9, :cond_3f

    .line 116
    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    invoke-virtual {v9, v11}, Lcom/android/server/am/VirtualScreenAttrs;->setBaseActivity(Z)V

    .line 137
    .end local v0    # "activityNdx":I
    .end local v2    # "next":Lcom/android/server/am/ActivityRecord;
    .end local v7    # "topNdx":I
    :cond_3f
    :goto_3f
    return-void

    .line 120
    :cond_40
    iget-object v9, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    .line 121
    .local v6, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 122
    .local v5, "taskNdx":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v8, v9, -0x1

    .line 123
    .local v8, "topTaskNdx":I
    if-ge v5, v8, :cond_3f

    .line 124
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 125
    .local v3, "nextTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 126
    .restart local v2    # "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_3f

    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_3f

    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3f

    .line 129
    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    invoke-virtual {v9, v1}, Lcom/android/server/am/VirtualScreenAttrs;->setBaseDisplayId(I)V

    .line 130
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    invoke-virtual {v9}, Lcom/android/server/am/VirtualScreenAttrs;->getBaseActivity()Z

    move-result v9

    if-eqz v9, :cond_3f

    .line 131
    iget-object v9, v2, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    invoke-virtual {v9, v11}, Lcom/android/server/am/VirtualScreenAttrs;->setBaseActivity(Z)V

    goto :goto_3f
.end method

.method public updateDisplayForAllActivitiesInTask(Lcom/android/server/am/TaskRecord;IZ)V
    .registers 11
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "displayId"    # I
    .param p3, "updateBase"    # Z

    .prologue
    .line 71
    const-string v4, "VirtualScreenPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateDisplayForAllActivitiesInTask() : displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    if-nez p1, :cond_1c

    .line 103
    :cond_1b
    return-void

    .line 76
    :cond_1c
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 77
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 81
    const/4 v3, 0x0

    .line 82
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "activityNdx":I
    :goto_2b
    if-ltz v1, :cond_1b

    .line 83
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 84
    .restart local v3    # "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_90

    .line 85
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    invoke-virtual {v4}, Lcom/android/server/am/VirtualScreenAttrs;->getDisplayId()I

    move-result v4

    if-eq v4, p2, :cond_7d

    .line 86
    const-string v4, "VirtualScreenPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateDisplayForAllActivitiesInTask() : update r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    invoke-virtual {v4, p2}, Lcom/android/server/am/VirtualScreenAttrs;->setDisplayId(I)V

    .line 88
    if-eqz p3, :cond_74

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    invoke-virtual {v4}, Lcom/android/server/am/VirtualScreenAttrs;->getBaseActivity()Z

    move-result v4

    if-nez v4, :cond_74

    .line 89
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    invoke-virtual {v4, p2}, Lcom/android/server/am/VirtualScreenAttrs;->setBaseDisplayId(I)V

    .line 91
    :cond_74
    iget-object v4, p0, mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v4, v5, p2}, Lcom/android/server/wm/WindowManagerService;->setAppTokenDisplayId(Landroid/view/IApplicationToken;I)V

    .line 93
    :cond_7d
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_90

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_90

    .line 95
    :try_start_87
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v4, v5, p2}, Landroid/app/IApplicationThread;->scheduleActivityDisplayIdChanged(Landroid/os/IBinder;I)V
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_90} :catch_93

    .line 82
    :cond_90
    :goto_90
    add-int/lit8 v1, v1, -0x1

    goto :goto_2b

    .line 96
    :catch_93
    move-exception v2

    .line 97
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_90
.end method
