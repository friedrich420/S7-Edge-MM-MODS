.class public Lcom/android/server/am/VirtualScreenManagerService;
.super Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager$Stub;
.source "VirtualScreenManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/VirtualScreenManagerService$1;,
        Lcom/android/server/am/VirtualScreenManagerService$MyHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DEBUG_PERFORMANCE:Z

.field private static final DEBUG_POSITION:Z = false

.field private static final PAUSE_TIMEOUT:I = 0x3e8

.field private static final PAUSE_VIRTUAL_SCREEN_MSG:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "VirtualScreenManagerService"

.field private static sSelf:Lcom/android/server/am/VirtualScreenManagerService;


# instance fields
.field private mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private mBindingDisplayIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private mHandler:Landroid/os/Handler;

.field private mOffsetMoveBackTime:J

.field private mOffsetStartTime:J

.field private mReadyToUpdateOffset:Z

.field private mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

.field private mVirtualScreen:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/VirtualScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mVirtualScreenByPackage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVirtualScreenPosition:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 69
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, DEBUG_PERFORMANCE:Z

    .line 73
    const/4 v0, 0x0

    sput-object v0, sSelf:Lcom/android/server/am/VirtualScreenManagerService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 7
    .param p1, "systemContext"    # Landroid/content/Context;
    .param p2, "am"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager$Stub;-><init>()V

    .line 70
    iput-wide v2, p0, mOffsetStartTime:J

    .line 71
    iput-wide v2, p0, mOffsetMoveBackTime:J

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mVirtualScreenByPackage:Ljava/util/HashMap;

    .line 81
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mVirtualScreen:Landroid/util/SparseArray;

    .line 82
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mBindingDisplayIds:Landroid/util/SparseArray;

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mVirtualScreenPosition:Landroid/util/SparseArray;

    .line 89
    new-instance v0, Lcom/android/server/am/VirtualScreenManagerService$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/VirtualScreenManagerService$MyHandler;-><init>(Lcom/android/server/am/VirtualScreenManagerService;Lcom/android/server/am/VirtualScreenManagerService$1;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 91
    iput-object v1, p0, mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, mReadyToUpdateOffset:Z

    .line 110
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 111
    iput-object p2, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 112
    iget-object v0, p2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 113
    sput-object p0, sSelf:Lcom/android/server/am/VirtualScreenManagerService;

    .line 115
    iget-object v0, p0, mContext:Landroid/content/Context;

    const v1, 0x10c0003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 117
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/VirtualScreenManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/VirtualScreenManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, handlePauseVirtualScreen(I)V

    return-void
.end method

.method private addBindingDisplayId(II)V
    .registers 5
    .param p1, "bindDisplayId"    # I
    .param p2, "mainDisplayId"    # I

    .prologue
    .line 909
    const/4 v0, 0x0

    .line 910
    .local v0, "bindingIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, mBindingDisplayIds:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bindingIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 912
    .restart local v0    # "bindingIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_13

    .line 913
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 919
    :goto_12
    return-void

    .line 915
    :cond_13
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "bindingIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 916
    .restart local v0    # "bindingIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 917
    iget-object v1, p0, mBindingDisplayIds:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_12
.end method

.method private dumpVirtualScreenByPackageLocked(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z

    .prologue
    .line 1088
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "List of Packages :"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1089
    iget-object v3, p0, mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1090
    .local v1, "keys":Ljava/util/Iterator;
    iget-object v3, p0, mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_1f

    .line 1091
    const-string v3, "    No Packages"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1094
    :cond_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 1095
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1096
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v3, p0, mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1097
    .local v0, "displayId":I
    const-string v3, "    Package ["

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "]"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1098
    if-eqz p3, :cond_63

    .line 1099
    const-string v3, "      virtualscreen="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1100
    const-string v3, "      position="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, mVirtualScreenPosition:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1f

    .line 1102
    :cond_63
    const-string v3, "      VirtualScreen\'s displayId="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_1f

    .line 1105
    .end local v0    # "displayId":I
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_6c
    return-void
.end method

.method private dumpVirtualScreenLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1108
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "List of VirtualScreens :"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1109
    iget-object v2, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_15

    .line 1110
    const-string v2, "    No VirtualScreen"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1112
    :cond_15
    const/4 v0, 0x0

    .local v0, "ndx":I
    :goto_16
    iget-object v2, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3d

    .line 1113
    iget-object v2, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/VirtualScreen;

    .line 1114
    .local v1, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    const-string v2, "    "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1115
    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1112
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 1117
    .end local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :cond_3d
    return-void
.end method

.method private handlePauseVirtualScreen(I)V
    .registers 10
    .param p1, "displayId"    # I

    .prologue
    const/4 v5, 0x1

    .line 934
    iget-object v4, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 935
    :try_start_4
    iget-object v3, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/VirtualScreen;

    .line 936
    .local v2, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v2, :cond_46

    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v3

    if-nez v3, :cond_46

    .line 937
    iget-object v3, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 938
    .local v1, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v5, :cond_2c

    .line 939
    :cond_22
    const-string v3, "VirtualScreenManagerService"

    const-string/jumbo v5, "handlePauseVirtualScreen() stack is empty"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    monitor-exit v4

    .line 947
    .end local v1    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_2b
    return-void

    .line 942
    .restart local v1    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .line 943
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v3, v5, v6, v7}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    .line 944
    iget-object v3, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 946
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v1    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_46
    monitor-exit v4

    goto :goto_2b

    .end local v2    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :catchall_48
    move-exception v3

    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_4 .. :try_end_4a} :catchall_48

    throw v3
.end method

.method private removeBindingDisplayId(II)V
    .registers 5
    .param p1, "bindDisplayId"    # I
    .param p2, "mainDisplayId"    # I

    .prologue
    .line 922
    const/4 v0, 0x0

    .line 923
    .local v0, "bindingIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, mBindingDisplayIds:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bindingIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 924
    .restart local v0    # "bindingIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_1d

    .line 925
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 927
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 928
    iget-object v1, p0, mBindingDisplayIds:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 931
    :cond_1d
    return-void
.end method

.method public static self()Lcom/android/server/am/VirtualScreenManagerService;
    .registers 1

    .prologue
    .line 624
    sget-object v0, sSelf:Lcom/android/server/am/VirtualScreenManagerService;

    return-object v0
.end method

.method private unBindVirtualScreenLocked(I)Z
    .registers 6
    .param p1, "displayId"    # I

    .prologue
    .line 555
    const/4 v0, -0x1

    .line 556
    .local v0, "bindDisplayId":I
    iget-object v3, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/VirtualScreen;

    .line 558
    .local v2, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v2, :cond_29

    .line 559
    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->getBindDisplayId()I

    move-result v0

    .line 560
    invoke-direct {p0, v0, p1}, removeBindingDisplayId(II)V

    .line 561
    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->unbind()V

    .line 563
    if-eqz v0, :cond_27

    .line 564
    iget-object v3, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/VirtualScreen;

    .line 565
    .local v1, "bindedVirtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v1, :cond_27

    .line 566
    invoke-direct {p0, p1, v0}, removeBindingDisplayId(II)V

    .line 567
    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->unbind()V

    .line 570
    .end local v1    # "bindedVirtualScreen":Lcom/android/server/am/VirtualScreen;
    :cond_27
    const/4 v3, 0x1

    .line 572
    :goto_28
    return v3

    :cond_29
    const/4 v3, 0x0

    goto :goto_28
.end method


# virtual methods
.method public allowAppTransition(Lcom/android/server/am/ActivityRecord;)Z
    .registers 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v4, 0x0

    .line 880
    if-eqz p1, :cond_62

    .line 881
    const/4 v1, 0x0

    .line 882
    .local v1, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    const/4 v0, -0x1

    .line 884
    .local v0, "displayId":I
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreenAttrs;->getDisplayId()I

    move-result v0

    .line 885
    iget-object v2, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    check-cast v1, Lcom/android/server/am/VirtualScreen;

    .line 886
    .restart local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v1, :cond_1a

    .line 887
    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->allowAppTransition()Z

    move-result v2

    .line 905
    .end local v0    # "displayId":I
    .end local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :goto_19
    return v2

    .line 890
    .restart local v0    # "displayId":I
    .restart local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :cond_1a
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreenAttrs;->getBaseDisplayId()I

    move-result v0

    .line 891
    iget-object v2, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    check-cast v1, Lcom/android/server/am/VirtualScreen;

    .line 892
    .restart local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v1, :cond_35

    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 893
    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->allowAppTransition()Z

    move-result v2

    goto :goto_19

    .line 896
    :cond_35
    iget-object v2, p0, mVirtualScreenByPackage:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 897
    iget-object v2, p0, mVirtualScreenByPackage:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 898
    iget-object v2, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    check-cast v1, Lcom/android/server/am/VirtualScreen;

    .line 899
    .restart local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v1, :cond_62

    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 900
    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->allowAppTransition()Z

    move-result v2

    goto :goto_19

    .line 905
    .end local v0    # "displayId":I
    .end local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :cond_62
    const/4 v2, 0x1

    goto :goto_19
.end method

.method public bindVirtualScreen(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "bindDisplayId"    # I

    .prologue
    const/4 v3, 0x0

    .line 503
    iget-object v2, p0, mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 504
    const-string v2, "VirtualScreenManagerService"

    const-string v4, "bindVirtualScreen() There wasn\'t Main Virtual Screen."

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 535
    :goto_11
    return v2

    .line 508
    :cond_12
    iget-object v4, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 509
    :try_start_15
    iget-object v2, p0, mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 511
    .local v0, "mainDisplayId":I
    iget-object v2, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/VirtualScreen;

    .line 513
    .local v1, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v1, :cond_3b

    .line 514
    invoke-virtual {v1, p2}, Lcom/android/server/am/VirtualScreen;->setBindDisplayId(I)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 515
    const-string v2, "VirtualScreenManagerService"

    const-string v5, "bindVirtualScreen() Fail to bind display. Already binded display"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    monitor-exit v4

    move v2, v3

    goto :goto_11

    .line 520
    :cond_3b
    const-string v2, "VirtualScreenManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindVirtualScreen() package="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "binding with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-direct {p0, p2, v0}, addBindingDisplayId(II)V

    .line 523
    if-eqz p2, :cond_a1

    .line 524
    iget-object v2, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    check-cast v1, Lcom/android/server/am/VirtualScreen;

    .line 525
    .restart local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v1, :cond_7c

    .line 526
    invoke-virtual {v1, v0}, Lcom/android/server/am/VirtualScreen;->setBindDisplayId(I)Z

    move-result v2

    if-nez v2, :cond_7c

    .line 527
    const-string v2, "VirtualScreenManagerService"

    const-string v5, "bindVirtualScreen() Fail to bind display. Already binded display"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    monitor-exit v4

    move v2, v3

    goto :goto_11

    .line 532
    :cond_7c
    const-string v2, "VirtualScreenManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindVirtualScreen() package="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "binding with "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-direct {p0, v0, p2}, addBindingDisplayId(II)V

    .line 535
    :cond_a1
    const/4 v2, 0x1

    monitor-exit v4

    goto/16 :goto_11

    .line 536
    .end local v0    # "mainDisplayId":I
    .end local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :catchall_a5
    move-exception v2

    monitor-exit v4
    :try_end_a7
    .catchall {:try_start_15 .. :try_end_a7} :catchall_a5

    throw v2
.end method

.method public cleanupVirtualScreen(I)V
    .registers 7
    .param p1, "displayId"    # I

    .prologue
    .line 279
    iget-object v2, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/VirtualScreen;

    .line 280
    .local v1, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v1, :cond_33

    .line 281
    const-string v2, "VirtualScreenManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanupVirtualScreen() for display #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->getBindDisplayId()I

    move-result v0

    .line 283
    .local v0, "bindDisplayId":I
    iget-object v2, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 285
    invoke-direct {p0, v0, p1}, removeBindingDisplayId(II)V

    .line 287
    if-eqz v0, :cond_33

    .line 288
    invoke-direct {p0, p1, v0}, removeBindingDisplayId(II)V

    .line 291
    .end local v0    # "bindDisplayId":I
    :cond_33
    return-void
.end method

.method public clearTransition()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 384
    iget-object v0, p0, mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    if-nez v0, :cond_6

    .line 389
    :goto_5
    return-void

    .line 387
    :cond_6
    iget-object v0, p0, mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/am/VirtualScreen;->setOffset(II)Z

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    goto :goto_5
.end method

.method public clearVirtualScreenPosition()V
    .registers 2

    .prologue
    .line 723
    iget-object v0, p0, mVirtualScreenPosition:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 724
    const/4 v0, 0x1

    iput-boolean v0, p0, mReadyToUpdateOffset:Z

    .line 725
    return-void
.end method

.method public createVirtualScreen(Landroid/graphics/Rect;)I
    .registers 11
    .param p1, "bound"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, -0x1

    .line 121
    if-nez p1, :cond_d

    .line 122
    const-string v5, "VirtualScreenManagerService"

    const-string/jumbo v6, "createVirtualScreen() Invalid bound"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 148
    :goto_c
    return v0

    .line 126
    :cond_d
    iget-object v5, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mVirtualScreenPolicy:Lcom/android/server/am/VirtualScreenPolicy;

    const-string v6, "com.samsung.android.virtualscreen.permission.MANAGE_VIRTUAL_SCREEN"

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_51

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: createVirtualScreen() from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " requires PERMISSION_MANAGE_VIRTUAL_SCREEN permission"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "msg":Ljava/lang/String;
    const-string v4, "VirtualScreenManagerService"

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 136
    .end local v1    # "msg":Ljava/lang/String;
    :cond_51
    iget-object v5, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 137
    :try_start_54
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 138
    .local v2, "ident":J
    iget-object v6, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/am/ActivityManagerService;->createVirtualScreen(II)I

    move-result v0

    .line 139
    .local v0, "displayId":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 140
    if-gez v0, :cond_76

    .line 141
    const-string v6, "VirtualScreenManagerService"

    const-string/jumbo v7, "createVirtualScreen() Invalid displayId"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    monitor-exit v5

    move v0, v4

    goto :goto_c

    .line 144
    :cond_76
    const-string v4, "VirtualScreenManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "createVirtualScreen displayId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v4, p0, mVirtualScreen:Landroid/util/SparseArray;

    new-instance v6, Lcom/android/server/am/VirtualScreen;

    invoke-direct {v6, v0, p1}, Lcom/android/server/am/VirtualScreen;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {v4, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    iget-object v4, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->performLayoutForAppTransition()V

    .line 148
    monitor-exit v5

    goto/16 :goto_c

    .line 149
    .end local v0    # "displayId":I
    .end local v2    # "ident":J
    :catchall_a1
    move-exception v4

    monitor-exit v5
    :try_end_a3
    .catchall {:try_start_54 .. :try_end_a3} :catchall_a1

    throw v4
.end method

.method public createVirtualScreenAnimation(Z)Landroid/view/animation/Animation;
    .registers 4
    .param p1, "enter"    # Z

    .prologue
    .line 377
    iget-object v0, p0, mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    if-eqz v0, :cond_d

    .line 378
    iget-object v0, p0, mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    iget-object v1, p0, mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/VirtualScreen;->createTransitAnimation(ZLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 380
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1037
    iget-object v6, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3f

    .line 1039
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump virtualscreen from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " without permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1085
    :goto_3e
    return-void

    .line 1046
    :cond_3f
    const/4 v1, 0x0

    .line 1047
    .local v1, "dumpAll":Z
    const/4 v3, 0x0

    .line 1048
    .local v3, "opti":I
    :goto_41
    array-length v6, p3

    if-ge v3, v6, :cond_57

    .line 1049
    aget-object v2, p3, v3

    .line 1050
    .local v2, "opt":Ljava/lang/String;
    if-eqz v2, :cond_57

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_57

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_81

    .line 1067
    .end local v2    # "opt":Ljava/lang/String;
    :cond_57
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1069
    .local v4, "origId":J
    :try_start_5b
    array-length v6, p3

    if-ge v3, v6, :cond_c8

    .line 1070
    aget-object v0, p3, v3

    .line 1071
    .local v0, "cmd":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 1073
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad virtualscreen command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1074
    const-string v6, "Use -h for help."

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7d
    .catchall {:try_start_5b .. :try_end_7d} :catchall_df

    .line 1083
    .end local v0    # "cmd":Ljava/lang/String;
    :goto_7d
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3e

    .line 1053
    .end local v4    # "origId":J
    .restart local v2    # "opt":Ljava/lang/String;
    :cond_81
    add-int/lit8 v3, v3, 0x1

    .line 1054
    const-string v6, "-h"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a0

    .line 1055
    const-string v6, "VirtualScreen manager dump options:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1056
    const-string v6, "  [-h] [cmd] ..."

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1057
    const-string v6, "  cmd may be one of:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1058
    const-string v6, "  -a: include all available server state"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3e

    .line 1060
    :cond_a0
    const-string v6, "-a"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_aa

    .line 1061
    const/4 v1, 0x1

    goto :goto_41

    .line 1063
    :cond_aa
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown argument: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; use -h for help"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 1076
    .end local v2    # "opt":Ljava/lang/String;
    .restart local v4    # "origId":J
    :cond_c8
    :try_start_c8
    iget-object v7, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_df

    .line 1077
    :try_start_cb
    const-string v6, "VIRTUALSCREEN MANAGER (dumpsys virtualscreen)"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1078
    const-string v6, "  "

    invoke-direct {p0, v6, p2, v1}, dumpVirtualScreenByPackageLocked(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 1079
    const-string v6, "  "

    invoke-direct {p0, v6, p2}, dumpVirtualScreenLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1080
    monitor-exit v7

    goto :goto_7d

    :catchall_dc
    move-exception v6

    monitor-exit v7
    :try_end_de
    .catchall {:try_start_cb .. :try_end_de} :catchall_dc

    :try_start_de
    throw v6
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_df

    .line 1083
    :catchall_df
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method getDefaultDisplayRect()Landroid/graphics/Rect;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 837
    iget-object v1, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 838
    .local v0, "info":Landroid/view/DisplayInfo;
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public getDisplayId(Landroid/os/IBinder;Ljava/lang/String;)I
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 594
    iget-object v3, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 595
    if-eqz p1, :cond_6b

    .line 596
    :try_start_6
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 598
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_10

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v4, :cond_46

    .line 599
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid arguments. token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : getDisplayId() from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, "msg":Ljava/lang/String;
    const-string v4, "VirtualScreenManagerService"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    monitor-exit v3

    .line 617
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_45
    return v2

    .line 608
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_46
    iget-object v2, p0, mVirtualScreenByPackage:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 609
    iget-object v2, p0, mVirtualScreenByPackage:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    monitor-exit v3

    goto :goto_45

    .line 619
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_60
    move-exception v2

    monitor-exit v3
    :try_end_62
    .catchall {:try_start_6 .. :try_end_62} :catchall_60

    throw v2

    .line 611
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_63
    :try_start_63
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreenAttrs;->getBaseDisplayId()I

    move-result v2

    monitor-exit v3

    goto :goto_45

    .line 614
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_6b
    iget-object v4, p0, mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_81

    .line 615
    iget-object v2, p0, mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    monitor-exit v3

    goto :goto_45

    .line 617
    :cond_81
    monitor-exit v3
    :try_end_82
    .catchall {:try_start_63 .. :try_end_82} :catchall_60

    goto :goto_45
.end method

.method getInitialDefaultDisplayRect()Landroid/graphics/Rect;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 831
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 832
    .local v0, "size":Landroid/graphics/Point;
    iget-object v1, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v4, v0}, Lcom/android/server/wm/WindowManagerService;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 833
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public getOffset(I)Landroid/graphics/Point;
    .registers 6
    .param p1, "displayId"    # I

    .prologue
    .line 490
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 491
    .local v0, "pt":Landroid/graphics/Point;
    iget-object v2, p0, mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    if-eqz v2, :cond_a

    .line 498
    :cond_9
    :goto_9
    return-object v0

    .line 494
    :cond_a
    iget-object v2, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/VirtualScreen;

    .line 495
    .local v1, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v1, :cond_9

    .line 496
    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->getOffsetX()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->getOffsetY()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V

    goto :goto_9
.end method

.method public getVirtualScreenPosition(ILandroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/PointF;F)Z
    .registers 15
    .param p1, "displayId"    # I
    .param p2, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p3, "position"    # Landroid/graphics/PointF;
    .param p4, "scale"    # F

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 776
    if-eqz p2, :cond_2e

    .line 777
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7d0

    if-lt v4, v7, :cond_1c

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0xbb7

    if-gt v4, v7, :cond_1c

    move v4, v5

    .line 827
    :goto_1b
    return v4

    .line 781
    :cond_1c
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v4

    if-eqz v4, :cond_2e

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v4

    if-eqz v4, :cond_2e

    move v4, v5

    .line 783
    goto :goto_1b

    .line 787
    :cond_2e
    if-nez p3, :cond_3a

    .line 788
    const-string v4, "VirtualScreenManagerService"

    const-string/jumbo v6, "getVirtualScreenPosition() position is null."

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 789
    goto :goto_1b

    .line 792
    :cond_3a
    iget-object v4, p0, mVirtualScreenPosition:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 793
    .local v3, "virtualScreenPosition":Landroid/graphics/PointF;
    if-eqz v3, :cond_4f

    .line 794
    iget-boolean v4, p0, mReadyToUpdateOffset:Z

    if-nez v4, :cond_4a

    move v4, v5

    .line 795
    goto :goto_1b

    .line 797
    :cond_4a
    invoke-virtual {p3, v3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    move v4, v6

    .line 798
    goto :goto_1b

    .line 801
    :cond_4f
    const/4 v2, 0x0

    .line 802
    .local v2, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    iget-object v4, p0, mBindingDisplayIds:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 803
    .local v0, "bindingIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_96

    .line 804
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_96

    .line 805
    iget-object v7, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    check-cast v2, Lcom/android/server/am/VirtualScreen;

    .line 806
    .restart local v2    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v2, :cond_93

    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v4

    if-eqz v4, :cond_93

    iget-object v4, p0, mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_93

    .line 808
    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->getOffsetX()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p4

    iput v4, p3, Landroid/graphics/PointF;->x:F

    .line 809
    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->getOffsetY()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p4

    iput v4, p3, Landroid/graphics/PointF;->y:F

    .line 804
    :cond_93
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    .line 814
    .end local v1    # "i":I
    :cond_96
    iget-object v4, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    check-cast v2, Lcom/android/server/am/VirtualScreen;

    .line 815
    .restart local v2    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v2, :cond_ce

    .line 816
    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->getScreenSize()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->getOffsetX()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p4

    add-float/2addr v4, v7

    invoke-virtual {v2, p4}, Lcom/android/server/am/VirtualScreen;->getOffsetByPosition(F)Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v7

    iput v4, p3, Landroid/graphics/PointF;->x:F

    .line 817
    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->getScreenSize()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v2}, Lcom/android/server/am/VirtualScreen;->getOffsetY()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p4

    add-float/2addr v4, v7

    invoke-virtual {v2, p4}, Lcom/android/server/am/VirtualScreen;->getOffsetByPosition(F)Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v7

    iput v4, p3, Landroid/graphics/PointF;->y:F

    .line 824
    :cond_ce
    iget v4, p3, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_dd

    iget v4, p3, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_dd

    move v4, v5

    .line 825
    goto/16 :goto_1b

    :cond_dd
    move v4, v6

    .line 827
    goto/16 :goto_1b
.end method

.method public getVirtualScreenSize(I)Landroid/graphics/Rect;
    .registers 6
    .param p1, "displayId"    # I

    .prologue
    .line 1013
    iget-object v2, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/VirtualScreen;

    .line 1014
    .local v1, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v1, :cond_1a

    .line 1015
    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->getScreenSize()Landroid/graphics/Rect;

    move-result-object v0

    .line 1016
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->getOffsetX()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->getOffsetY()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1019
    .end local v0    # "rect":Landroid/graphics/Rect;
    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method isFrontVirtualScreen(Lcom/android/server/am/ActivityStack;)Z
    .registers 7
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    const/4 v2, 0x1

    .line 842
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 843
    .local v0, "top":Lcom/android/server/am/ActivityRecord;
    iget-object v3, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/VirtualScreen;

    .line 844
    .local v1, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v1, :cond_23

    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v3

    if-nez v3, :cond_23

    if-eqz v0, :cond_23

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v3, v4, :cond_23

    .line 846
    const/4 v2, 0x0

    .line 848
    :cond_23
    return v2
.end method

.method public isMoving(I)Z
    .registers 6
    .param p1, "displayId"    # I

    .prologue
    .line 1024
    iget-object v1, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    .line 1025
    .local v0, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v0, :cond_51

    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->getOffsetX()I

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->getOffsetY()I

    move-result v1

    if-eqz v1, :cond_51

    .line 1027
    :cond_16
    const-string v1, "VirtualScreenManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isMoving() called from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->getOffsetUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " offsetX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->getOffsetX()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " offsetY : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->getOffsetY()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    const/4 v1, 0x1

    .line 1032
    :goto_50
    return v1

    :cond_51
    const/4 v1, 0x0

    goto :goto_50
.end method

.method public isVirtualScreen(I)Z
    .registers 5
    .param p1, "displayId"    # I

    .prologue
    .line 852
    iget-object v1, p0, mVirtualScreen:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    .line 853
    .local v0, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-nez v0, :cond_d

    .line 854
    const/4 v1, 0x0

    .line 856
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x1

    goto :goto_c
.end method

.method public isVisibleVirtualScreen(I)Z
    .registers 5
    .param p1, "displayId"    # I

    .prologue
    .line 860
    iget-object v1, p0, mVirtualScreen:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/VirtualScreen;

    .line 861
    .local v0, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-nez v0, :cond_d

    .line 862
    const/4 v1, 0x0

    .line 864
    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v1

    goto :goto_c
.end method

.method public isVisibleVirtualScreen(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 868
    iget-object v2, p0, mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 869
    iget-object v2, p0, mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 870
    .local v0, "displayId":I
    iget-object v2, p0, mVirtualScreen:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/VirtualScreen;

    .line 871
    .local v1, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-nez v1, :cond_22

    move v2, v3

    .line 876
    .end local v0    # "displayId":I
    .end local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :goto_21
    return v2

    .line 874
    .restart local v0    # "displayId":I
    .restart local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :cond_22
    invoke-virtual {v1}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v2

    goto :goto_21

    .end local v0    # "displayId":I
    .end local v1    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :cond_27
    move v2, v3

    .line 876
    goto :goto_21
.end method

.method moveTaskBackToDisplayIfNeeded(Lcom/android/server/am/TaskRecord;ZZ)Z
    .registers 16
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "updateVisibility"    # Z
    .param p3, "onlyAllowTheLast"    # Z

    .prologue
    const/4 v9, 0x0

    .line 634
    if-eqz p1, :cond_13c

    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_13c

    .line 635
    if-eqz p3, :cond_3a

    .line 636
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 637
    .local v4, "numOfActivities":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_2d

    .line 638
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 639
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v8, :cond_2a

    add-int/lit8 v4, v4, -0x1

    .line 637
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 641
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_2d
    const/4 v8, 0x1

    if-le v4, v8, :cond_3a

    .line 642
    const-string v8, "VirtualScreenManagerService"

    const-string/jumbo v10, "moveTaskBackToDisplayIfNeeded(): The task has more than one activity"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 706
    .end local v3    # "i":I
    .end local v4    # "numOfActivities":I
    :goto_39
    return v8

    .line 647
    :cond_3a
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 648
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_44

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v8, :cond_4e

    .line 649
    :cond_44
    const-string v8, "VirtualScreenManagerService"

    const-string/jumbo v10, "moveTaskBackToDisplayIfNeeded(): top activity or app is null"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 650
    goto :goto_39

    .line 653
    :cond_4e
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v8, v8, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v8, :cond_60

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v8, v8, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v8, :cond_60

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v8, v8, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-eqz v8, :cond_a7

    .line 654
    :cond_60
    const/4 v2, -0x1

    .line 655
    .local v2, "displayId":I
    iget-object v8, p0, mVirtualScreenByPackage:Ljava/util/HashMap;

    iget-object v10, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_98

    .line 656
    iget-object v8, p0, mVirtualScreenByPackage:Ljava/util/HashMap;

    iget-object v10, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 660
    :cond_81
    :goto_81
    iget-object v8, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/VirtualScreen;

    .line 661
    .local v7, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v7, :cond_a7

    .line 662
    const-string v8, "VirtualScreenManagerService"

    const-string/jumbo v10, "moveTaskBackToDisplayIfNeeded(): app which created virtualscreen is crashing or not responding, reset offset!"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-virtual {v7, v9, v9}, Lcom/android/server/am/VirtualScreen;->setOffset(II)Z

    move v8, v9

    .line 664
    goto :goto_39

    .line 657
    .end local v7    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :cond_98
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v8

    invoke-virtual {p0, v8}, isVirtualScreen(I)Z

    move-result v8

    if-eqz v8, :cond_81

    .line 658
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v2

    goto :goto_81

    .line 668
    .end local v2    # "displayId":I
    :cond_a7
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v8

    iget-object v10, v5, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    invoke-virtual {v10}, Lcom/android/server/am/VirtualScreenAttrs;->getBaseDisplayId()I

    move-result v10

    if-eq v8, v10, :cond_13c

    .line 670
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    invoke-virtual {v8}, Lcom/android/server/am/VirtualScreenAttrs;->getBaseDisplayId()I

    move-result v1

    .line 672
    .local v1, "baseDisplayId":I
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v8, v8, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v8, :cond_cb

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v8, v8, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v8, :cond_cb

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v8, v8, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-eqz v8, :cond_e1

    .line 673
    :cond_cb
    const-string v8, "VirtualScreenManagerService"

    const-string/jumbo v10, "moveTaskBackToDisplayIfNeeded(): app on virtualscreen is crashing or not responding, reset offset!"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v8, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/VirtualScreen;

    .line 675
    .restart local v7    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    invoke-virtual {v7, v9, v9}, Lcom/android/server/am/VirtualScreen;->setOffset(II)Z

    move v8, v9

    .line 676
    goto/16 :goto_39

    .line 679
    .end local v7    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :cond_e1
    if-eqz p2, :cond_11a

    .line 681
    iget-object v8, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/VirtualScreen;

    iput-object v8, p0, mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    .line 682
    iget-object v8, p0, mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    if-eqz v8, :cond_11a

    .line 683
    iget-object v8, p0, mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    invoke-virtual {v8}, Lcom/android/server/am/VirtualScreen;->prepareTransition()V

    .line 685
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 687
    const/4 v6, 0x0

    .line 688
    .local v6, "transit":I
    iget-object v8, p0, mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    invoke-virtual {v8}, Lcom/android/server/am/VirtualScreen;->getBindDisplayId()I

    move-result v8

    const/4 v10, -0x1

    if-eq v8, v10, :cond_139

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    invoke-virtual {v8}, Lcom/android/server/am/VirtualScreenAttrs;->getBaseDisplayId()I

    move-result v8

    if-eqz v8, :cond_139

    .line 690
    const/16 v6, 0x12d

    .line 694
    :goto_10e
    iget-object v8, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8, v6, v9, v9}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZI)V

    .line 696
    iget-object v8, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v8, v10, v9, v9}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;ZI)V

    .line 700
    .end local v6    # "transit":I
    :cond_11a
    const-string v8, "VirtualScreenManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "moveTaskBackToDisplayIfNeeded() need to change display="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-virtual {p0, p1, v1}, moveTaskToDisplay(Lcom/android/server/am/TaskRecord;I)Z

    move-result v8

    goto/16 :goto_39

    .line 692
    .restart local v6    # "transit":I
    :cond_139
    const/16 v6, 0x9

    goto :goto_10e

    .line 705
    .end local v1    # "baseDisplayId":I
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "transit":I
    :cond_13c
    const-string v8, "VirtualScreenManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "failed to move task "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 706
    goto/16 :goto_39
.end method

.method moveTaskToDisplay(Lcom/android/server/am/TaskRecord;I)Z
    .registers 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toDisplayId"    # I

    .prologue
    .line 950
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, moveTaskToDisplay(Lcom/android/server/am/TaskRecord;IZ)Z

    move-result v0

    return v0
.end method

.method moveTaskToDisplay(Lcom/android/server/am/TaskRecord;IZ)Z
    .registers 12
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toDisplayId"    # I
    .param p3, "updateBase"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 954
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 956
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    const-string v5, "VirtualScreenManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "moveTaskToDisplay() to display #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " r="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    if-nez v1, :cond_2c

    .line 985
    :goto_2b
    return v3

    .line 961
    :cond_2c
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 962
    .local v0, "fromStack":Lcom/android/server/am/ActivityStack;
    iget-object v5, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5, v6, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 963
    .local v2, "toStack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_4f

    .line 964
    iget-object v5, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v6

    invoke-virtual {v5, v6, p2}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(II)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 965
    if-nez v2, :cond_4f

    .line 966
    const-string v4, "VirtualScreenManagerService"

    const-string/jumbo v5, "moveTaskToDisplay() Couldn\'t find stack"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 971
    :cond_4f
    const v5, 0x1339e1

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v3, v6, v4

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 974
    iget-object v3, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mVirtualScreenPolicy:Lcom/android/server/am/VirtualScreenPolicy;

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3, v5, p2, p3}, Lcom/android/server/am/VirtualScreenPolicy;->updateDisplayForAllActivitiesInTask(Lcom/android/server/am/TaskRecord;IZ)V

    .line 976
    if-eqz p2, :cond_88

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v3

    if-ne v3, v4, :cond_88

    .line 977
    iget-object v3, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v5

    const-string/jumbo v6, "moveTaskToDisplay"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(ILjava/lang/String;)Z

    .line 980
    :cond_88
    iget-object v3, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v5, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v6

    invoke-virtual {v3, v5, v6, v4, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZ)V

    .line 981
    invoke-virtual {p0, p2}, isVirtualScreen(I)Z

    move-result v3

    if-nez v3, :cond_a0

    .line 982
    iget-object v3, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string v5, "change-display"

    invoke-virtual {v3, v2, v5}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 984
    :cond_a0
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    move v3, v4

    .line 985
    goto :goto_2b
.end method

.method public moveVirtualScreenToDisplay(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .prologue
    .line 577
    iget-object v4, p0, mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 578
    const-string v4, "VirtualScreenManagerService"

    const-string/jumbo v5, "moveVirtualScreenToDisplay() package doesn\'t exist!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/4 v1, 0x0

    .line 588
    :goto_11
    return v1

    .line 582
    :cond_12
    iget-object v5, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 584
    :try_start_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 585
    .local v2, "ident":J
    iget-object v4, p0, mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 586
    .local v0, "curDisplayId":I
    invoke-virtual {p0, v0, p2}, moveVirtualScreenToDisplayLocked(II)Z

    move-result v1

    .line 587
    .local v1, "res":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 588
    monitor-exit v5

    goto :goto_11

    .line 589
    .end local v0    # "curDisplayId":I
    .end local v1    # "res":Z
    .end local v2    # "ident":J
    :catchall_2e
    move-exception v4

    monitor-exit v5
    :try_end_30
    .catchall {:try_start_15 .. :try_end_30} :catchall_2e

    throw v4
.end method

.method moveVirtualScreenToDisplayLocked(II)Z
    .registers 10
    .param p1, "virtualScreenDisplayId"    # I
    .param p2, "displayId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 989
    iget-object v5, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2a

    .line 990
    const-string v4, "VirtualScreenManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "moveVirtualScreenToDisplay - virtualScreenDisplayId("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") doesn\'t exist!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    :goto_29
    return v3

    .line 994
    :cond_2a
    iget-object v5, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 995
    :try_start_2d
    iget-object v6, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 996
    .local v1, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v4, :cond_48

    .line 997
    :cond_3b
    const-string v4, "VirtualScreenManagerService"

    const-string/jumbo v6, "moveVirtualScreenToDisplayLocked(): stack is empty"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    monitor-exit v5

    goto :goto_29

    .line 1007
    .end local v1    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :catchall_45
    move-exception v3

    monitor-exit v5
    :try_end_47
    .catchall {:try_start_2d .. :try_end_47} :catchall_45

    throw v3

    .line 1001
    .restart local v1    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_48
    :try_start_48
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .line 1002
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v2

    .line 1004
    .local v2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v4, :cond_70

    .line 1005
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    invoke-virtual {p0, v3, p2}, moveTaskToDisplay(Lcom/android/server/am/TaskRecord;I)Z

    move-result v3

    monitor-exit v5

    goto :goto_29

    .line 1007
    :cond_70
    monitor-exit v5
    :try_end_71
    .catchall {:try_start_48 .. :try_end_71} :catchall_45

    move v3, v4

    .line 1008
    goto :goto_29
.end method

.method public recreateVirtualScreen(Ljava/lang/String;Landroid/graphics/Rect;)I
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, -0x1

    .line 153
    if-nez p2, :cond_d

    .line 154
    const-string v6, "VirtualScreenManagerService"

    const-string/jumbo v8, "recreateVirtualScreen() Invalid bound"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v7

    .line 197
    :goto_c
    return v1

    .line 158
    :cond_d
    iget-object v6, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mVirtualScreenPolicy:Lcom/android/server/am/VirtualScreenPolicy;

    const-string v8, "com.samsung.android.virtualscreen.permission.MANAGE_VIRTUAL_SCREEN"

    invoke-virtual {v6, v8}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_51

    .line 160
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: recreateVirtualScreen() from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " requires PERMISSION_MANAGE_VIRTUAL_SCREEN permission"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "msg":Ljava/lang/String;
    const-string v6, "VirtualScreenManagerService"

    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 168
    .end local v2    # "msg":Ljava/lang/String;
    :cond_51
    iget-object v8, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 169
    :try_start_54
    iget-object v6, p0, mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 170
    .local v1, "displayId":I
    iget-object v6, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/VirtualScreen;

    .line 171
    .local v5, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v5, :cond_f6

    .line 172
    invoke-virtual {v5}, Lcom/android/server/am/VirtualScreen;->getScreenSize()Landroid/graphics/Rect;

    move-result-object v0

    .line 173
    .local v0, "curBounds":Landroid/graphics/Rect;
    move-object v4, p2

    .line 174
    .local v4, "toBounds":Landroid/graphics/Rect;
    const-string v6, "VirtualScreenManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "recreateVirtualScreen() displayId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f6

    .line 176
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-ne v6, v9, :cond_b6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-eq v6, v9, :cond_dd

    .line 177
    :cond_b6
    invoke-virtual {p0, p1}, removeVirtualScreen(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0, p2}, createVirtualScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 179
    if-lez v1, :cond_f6

    .line 180
    iget-object v6, p0, mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v6, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/VirtualScreen;

    .line 182
    .local v3, "newVirtualScreen":Lcom/android/server/am/VirtualScreen;
    invoke-virtual {v5}, Lcom/android/server/am/VirtualScreen;->getBindDisplayId()I

    move-result v6

    invoke-virtual {p0, p1, v6}, bindVirtualScreen(Ljava/lang/String;I)Z

    .line 183
    monitor-exit v8

    goto/16 :goto_c

    .line 195
    .end local v0    # "curBounds":Landroid/graphics/Rect;
    .end local v1    # "displayId":I
    .end local v3    # "newVirtualScreen":Lcom/android/server/am/VirtualScreen;
    .end local v4    # "toBounds":Landroid/graphics/Rect;
    .end local v5    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :catchall_da
    move-exception v6

    monitor-exit v8
    :try_end_dc
    .catchall {:try_start_54 .. :try_end_dc} :catchall_da

    throw v6

    .line 187
    .restart local v0    # "curBounds":Landroid/graphics/Rect;
    .restart local v1    # "displayId":I
    .restart local v4    # "toBounds":Landroid/graphics/Rect;
    .restart local v5    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :cond_dd
    :try_start_dd
    new-instance v3, Lcom/android/server/am/VirtualScreen;

    invoke-direct {v3, v1, p2}, Lcom/android/server/am/VirtualScreen;-><init>(ILandroid/graphics/Rect;)V

    .line 188
    .restart local v3    # "newVirtualScreen":Lcom/android/server/am/VirtualScreen;
    invoke-virtual {v5}, Lcom/android/server/am/VirtualScreen;->getBindDisplayId()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/am/VirtualScreen;->setBindDisplayId(I)Z

    .line 189
    iget-object v6, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 190
    iget-object v6, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v6, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 191
    monitor-exit v8

    goto/16 :goto_c

    .line 195
    .end local v0    # "curBounds":Landroid/graphics/Rect;
    .end local v3    # "newVirtualScreen":Lcom/android/server/am/VirtualScreen;
    .end local v4    # "toBounds":Landroid/graphics/Rect;
    :cond_f6
    monitor-exit v8
    :try_end_f7
    .catchall {:try_start_dd .. :try_end_f7} :catchall_da

    .line 196
    const-string v6, "VirtualScreenManagerService"

    const-string/jumbo v8, "recreateVirtualScreen() failed to recreate virtual screen."

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v7

    .line 197
    goto/16 :goto_c
.end method

.method public removeVirtualScreen()V
    .registers 14

    .prologue
    .line 203
    iget-object v9, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mVirtualScreenPolicy:Lcom/android/server/am/VirtualScreenPolicy;

    const-string v10, "com.samsung.android.virtualscreen.permission.MANAGE_VIRTUAL_SCREEN"

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_44

    .line 205
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Permission Denial: removeVirtualScreen() from pid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " requires PERMISSION_MANAGE_VIRTUAL_SCREEN permission"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "msg":Ljava/lang/String;
    const-string v9, "VirtualScreenManagerService"

    invoke-static {v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v9, Ljava/lang/SecurityException;

    invoke-direct {v9, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 213
    .end local v2    # "msg":Ljava/lang/String;
    :cond_44
    iget-object v10, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 214
    :try_start_47
    iget-object v9, p0, mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 215
    iget-object v9, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .local v0, "displayNdx":I
    :goto_54
    if-ltz v0, :cond_ac

    .line 216
    iget-object v9, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/VirtualScreen;

    .line 217
    .local v8, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v8, :cond_a9

    .line 218
    iget-object v9, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/VirtualScreen;->getDisplayId()I

    move-result v11

    invoke-virtual {v9, v11}, Lcom/android/server/am/ActivityManagerService;->removeVirtualScreen(I)V

    .line 219
    iget-object v9, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8}, Lcom/android/server/am/VirtualScreen;->getDisplayId()I

    move-result v11

    invoke-virtual {v9, v11}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 220
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    .local v1, "i":I
    :goto_79
    if-ltz v1, :cond_a9

    .line 221
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 222
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v7

    .line 223
    .local v7, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    .local v6, "taskNdx":I
    :goto_8b
    if-ltz v6, :cond_a6

    .line 224
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 225
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    iget-object v9, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mVirtualScreenPolicy:Lcom/android/server/am/VirtualScreenPolicy;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v9, v5, v11, v12}, Lcom/android/server/am/VirtualScreenPolicy;->updateDisplayForAllActivitiesInTask(Lcom/android/server/am/TaskRecord;IZ)V

    .line 226
    iget-object v9, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget v11, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v9, v11}, Lcom/android/server/am/ActivityManagerService;->removeTask(I)Z

    .line 223
    add-int/lit8 v6, v6, -0x1

    goto :goto_8b

    .line 220
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_a6
    add-int/lit8 v1, v1, -0x1

    goto :goto_79

    .line 215
    .end local v1    # "i":I
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v6    # "taskNdx":I
    .end local v7    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_a9
    add-int/lit8 v0, v0, -0x1

    goto :goto_54

    .line 231
    .end local v8    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :cond_ac
    monitor-exit v10

    .line 232
    return-void

    .line 231
    .end local v0    # "displayNdx":I
    :catchall_ae
    move-exception v9

    monitor-exit v10
    :try_end_b0
    .catchall {:try_start_47 .. :try_end_b0} :catchall_ae

    throw v9
.end method

.method public removeVirtualScreen(Ljava/lang/String;)V
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 235
    iget-object v10, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mVirtualScreenPolicy:Lcom/android/server/am/VirtualScreenPolicy;

    const-string v11, "com.samsung.android.virtualscreen.permission.MANAGE_VIRTUAL_SCREEN"

    invoke-virtual {v10, v11}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_44

    .line 237
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: removeVirtualScreen() from pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " requires PERMISSION_MANAGE_VIRTUAL_SCREEN permission"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, "msg":Ljava/lang/String;
    const-string v10, "VirtualScreenManagerService"

    invoke-static {v10, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v10, Ljava/lang/SecurityException;

    invoke-direct {v10, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 245
    .end local v4    # "msg":Ljava/lang/String;
    :cond_44
    iget-object v11, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 246
    :try_start_47
    iget-object v10, p0, mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v10, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e2

    .line 248
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_da

    move-result-wide v2

    .line 250
    .local v2, "ident":J
    :try_start_53
    const-string v10, "VirtualScreenManagerService"

    const-string/jumbo v12, "removeVirtualScreen(): it is the one that created virtual screen"

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v10, p0, mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v10, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 252
    .local v0, "displayId":I
    iget-object v10, p0, mHandler:Landroid/os/Handler;

    const/16 v12, 0x3e9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_80

    .line 253
    iget-object v10, p0, mHandler:Landroid/os/Handler;

    const/16 v12, 0x3e9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 255
    :cond_80
    iget-object v10, p0, mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 256
    iget-object v10, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10, v0}, Lcom/android/server/am/ActivityManagerService;->removeVirtualScreen(I)V

    .line 257
    iget-object v10, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v10, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks(I)Ljava/util/ArrayList;
    :try_end_97
    .catchall {:try_start_53 .. :try_end_97} :catchall_dd

    move-result-object v6

    .line 258
    .local v6, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    if-nez v6, :cond_9f

    .line 271
    :try_start_9a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v11
    :try_end_9e
    .catchall {:try_start_9a .. :try_end_9e} :catchall_da

    .line 276
    .end local v0    # "displayId":I
    .end local v2    # "ident":J
    .end local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_9e
    return-void

    .line 261
    .restart local v0    # "displayId":I
    .restart local v2    # "ident":J
    .restart local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_9f
    :try_start_9f
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .local v1, "i":I
    :goto_a5
    if-ltz v1, :cond_d5

    .line 262
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    .line 263
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v9

    .line 264
    .local v9, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v8, v10, -0x1

    .local v8, "taskNdx":I
    :goto_b7
    if-ltz v8, :cond_d2

    .line 265
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/TaskRecord;

    .line 266
    .local v7, "task":Lcom/android/server/am/TaskRecord;
    iget-object v10, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mVirtualScreenPolicy:Lcom/android/server/am/VirtualScreenPolicy;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v10, v7, v12, v13}, Lcom/android/server/am/VirtualScreenPolicy;->updateDisplayForAllActivitiesInTask(Lcom/android/server/am/TaskRecord;IZ)V

    .line 267
    iget-object v10, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget v12, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v10, v12}, Lcom/android/server/am/ActivityManagerService;->removeTask(I)Z
    :try_end_cf
    .catchall {:try_start_9f .. :try_end_cf} :catchall_dd

    .line 264
    add-int/lit8 v8, v8, -0x1

    goto :goto_b7

    .line 261
    .end local v7    # "task":Lcom/android/server/am/TaskRecord;
    :cond_d2
    add-int/lit8 v1, v1, -0x1

    goto :goto_a5

    .line 271
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v8    # "taskNdx":I
    .end local v9    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_d5
    :try_start_d5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 273
    monitor-exit v11

    goto :goto_9e

    .line 275
    .end local v0    # "displayId":I
    .end local v1    # "i":I
    .end local v2    # "ident":J
    .end local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :catchall_da
    move-exception v10

    monitor-exit v11
    :try_end_dc
    .catchall {:try_start_d5 .. :try_end_dc} :catchall_da

    throw v10

    .line 271
    .restart local v2    # "ident":J
    :catchall_dd
    move-exception v10

    :try_start_de
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    .line 275
    .end local v2    # "ident":J
    :cond_e2
    monitor-exit v11
    :try_end_e3
    .catchall {:try_start_de .. :try_end_e3} :catchall_da

    goto :goto_9e
.end method

.method public setOffset(Landroid/os/IBinder;IIIZ)Z
    .registers 27
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .param p3, "offsetX"    # I
    .param p4, "offsetY"    # I
    .param p5, "force"    # Z

    .prologue
    .line 393
    const/4 v11, 0x1

    .line 394
    .local v11, "res":Z
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 395
    move/from16 v6, p2

    .line 396
    .local v6, "currentDisplayId":I
    const/4 v10, 0x0

    .line 397
    .local v10, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p1, :cond_a3

    .line 398
    :try_start_d
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 400
    if-eqz v10, :cond_19

    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v16, v0

    if-nez v16, :cond_6b

    .line 401
    :cond_19
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Invalid arguments. token="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " : setOffset() from pid="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, ", uid="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 405
    .local v7, "msg":Ljava/lang/String;
    const-string v16, "VirtualScreenManagerService"

    move-object/from16 v0, v16

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/16 v16, 0x0

    monitor-exit v17

    .line 485
    .end local v7    # "msg":Ljava/lang/String;
    :goto_6a
    return v16

    .line 409
    :cond_6b
    move-object/from16 v0, p0

    iget-object v0, v0, mVirtualScreenByPackage:Ljava/util/HashMap;

    move-object/from16 v16, v0

    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d2

    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/VirtualScreenAttrs;->getBaseDisplayId()I

    move-result v16

    if-nez v16, :cond_d2

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, mVirtualScreenByPackage:Ljava/util/HashMap;

    move-object/from16 v16, v0

    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result p2

    move/from16 v6, p2

    .line 417
    :cond_a3
    :goto_a3
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks(I)Ljava/util/ArrayList;

    move-result-object v13

    .line 418
    .local v13, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    if-eqz v13, :cond_bf

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_e3

    .line 419
    :cond_bf
    const-string v16, "VirtualScreenManagerService"

    const-string/jumbo v18, "setOffset(): stack is empty"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/16 v16, 0x0

    monitor-exit v17

    goto :goto_6a

    .line 484
    .end local v13    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :catchall_cf
    move-exception v16

    monitor-exit v17
    :try_end_d1
    .catchall {:try_start_d .. :try_end_d1} :catchall_cf

    throw v16

    .line 412
    :cond_d2
    :try_start_d2
    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/VirtualScreenAttrs;->getDisplayId()I

    move-result v6

    .line 413
    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->virtualScreenAttrs:Lcom/android/server/am/VirtualScreenAttrs;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/VirtualScreenAttrs;->getBaseDisplayId()I

    move-result p2

    goto :goto_a3

    .line 423
    .restart local v13    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_e3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 424
    .local v5, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_ea
    .catchall {:try_start_d2 .. :try_end_ea} :catchall_cf

    move-result-wide v8

    .line 427
    .local v8, "ident":J
    :try_start_eb
    move-object/from16 v0, p0

    iget-object v0, v0, mVirtualScreen:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/VirtualScreen;

    .line 428
    .local v14, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v14, :cond_10e

    .line 429
    invoke-virtual {v14}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v15

    .line 430
    .local v15, "visible":Z
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v14, v0, v1, v5, v2}, Lcom/android/server/am/VirtualScreen;->setOffset(IIIZ)Z
    :try_end_10a
    .catchall {:try_start_eb .. :try_end_10a} :catchall_209

    move-result v16

    if-nez v16, :cond_116

    .line 431
    const/4 v11, 0x0

    .line 482
    .end local v15    # "visible":Z
    :cond_10e
    :goto_10e
    :try_start_10e
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 484
    monitor-exit v17
    :try_end_112
    .catchall {:try_start_10e .. :try_end_112} :catchall_cf

    move/from16 v16, v11

    .line 485
    goto/16 :goto_6a

    .line 433
    .restart local v15    # "visible":Z
    :cond_116
    if-eqz p1, :cond_134

    .line 434
    :try_start_118
    invoke-virtual {v14}, Lcom/android/server/am/VirtualScreen;->isDefaultDisplay()Z

    move-result v16

    if-eqz v16, :cond_1d3

    .line 435
    if-eqz v6, :cond_129

    .line 436
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v6, v1}, moveVirtualScreenToDisplayLocked(II)Z

    .line 438
    :cond_129
    const/16 v16, 0x0

    const/16 v18, 0x0

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/android/server/am/VirtualScreen;->setOffset(II)Z

    .line 451
    :cond_134
    :goto_134
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 453
    invoke-virtual {v14}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v16

    move/from16 v0, v16

    if-eq v15, v0, :cond_1a6

    .line 454
    invoke-virtual {v14}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v15

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v18, 0x3e9

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_176

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v18, 0x3e9

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 458
    :cond_176
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityStack;

    .line 459
    .local v12, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v15, :cond_20e

    .line 460
    sget-boolean v16, DEBUG_PERFORMANCE:Z

    if-eqz v16, :cond_19f

    .line 461
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, mOffsetStartTime:J

    .line 462
    const-string v16, "VirtualScreenManagerService"

    const-string v18, "1. Performance Test Start"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_19f
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 472
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1a6
    :goto_1a6
    if-eqz v15, :cond_10e

    .line 473
    invoke-virtual {v14}, Lcom/android/server/am/VirtualScreen;->getBindDisplayId()I

    move-result v4

    .line 474
    .local v4, "bindDisplayId":I
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->isDrawnAppWindow(I)Z

    move-result v16

    if-eqz v16, :cond_1d0

    const/16 v16, -0x1

    move/from16 v0, v16

    if-le v4, v0, :cond_10e

    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowManagerService;->isDrawnAppWindow(I)Z

    move-result v16

    if-nez v16, :cond_10e

    .line 476
    :cond_1d0
    const/4 v11, 0x0

    goto/16 :goto_10e

    .line 440
    .end local v4    # "bindDisplayId":I
    :cond_1d3
    if-nez p3, :cond_1d7

    if-eqz p4, :cond_134

    .line 441
    :cond_1d7
    move/from16 v0, p2

    if-eq v0, v6, :cond_134

    .line 442
    sget-boolean v16, DEBUG_PERFORMANCE:Z

    if-eqz v16, :cond_1f4

    .line 443
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, mOffsetMoveBackTime:J

    .line 444
    const-string v16, "VirtualScreenManagerService"

    const-string v18, "2. Performance Test Start"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_1f4
    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v16, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, moveTaskBackToDisplayIfNeeded(Lcom/android/server/am/TaskRecord;ZZ)Z
    :try_end_207
    .catchall {:try_start_118 .. :try_end_207} :catchall_209

    goto/16 :goto_134

    .line 482
    .end local v14    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    .end local v15    # "visible":Z
    :catchall_209
    move-exception v16

    :try_start_20a
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v16
    :try_end_20e
    .catchall {:try_start_20a .. :try_end_20e} :catchall_cf

    .line 468
    .restart local v12    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v14    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    .restart local v15    # "visible":Z
    :cond_20e
    const/16 v16, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    :try_start_216
    move/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v16, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V
    :try_end_234
    .catchall {:try_start_216 .. :try_end_234} :catchall_209

    goto/16 :goto_1a6
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 628
    iget-object v1, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 629
    :try_start_3
    iput-object p1, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 630
    monitor-exit v1

    .line 631
    return-void

    .line 630
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public startActivity(Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)I
    .registers 33
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 295
    if-nez p2, :cond_d

    .line 296
    const-string v2, "VirtualScreenManagerService"

    const-string/jumbo v3, "startActivity: Invalid intent"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/16 v23, -0x1

    .line 372
    :goto_c
    return v23

    .line 300
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mEmergencyMgr:Lcom/sec/android/emergencymode/EmergencyManager;

    invoke-virtual {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 301
    const-string v2, "VirtualScreenManagerService"

    const-string/jumbo v3, "startActivity: Can\'t start activity in the emergency mode."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/16 v23, -0x1

    goto :goto_c

    .line 306
    :cond_2c
    const-string v2, "VirtualScreenManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivity: intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " by package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 309
    :try_start_5a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getVirtualScreenParams()Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;

    move-result-object v26

    .line 310
    .local v26, "params":Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;
    move-object/from16 v0, p0

    iget-object v2, v0, mVirtualScreenByPackage:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_171

    .line 312
    const-string v2, "VirtualScreenManagerService"

    const-string/jumbo v3, "startActivity: don\'t exist displayContent. create new one!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/16 v22, 0x0

    .line 314
    .local v22, "bound":Landroid/graphics/Rect;
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_152

    .line 315
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    .line 316
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, createVirtualScreen(Landroid/graphics/Rect;)I

    move-result v23

    .line 317
    .local v23, "displayId":I
    if-gez v23, :cond_9a

    .line 318
    const-string v2, "VirtualScreenManagerService"

    const-string/jumbo v3, "startActivity: Invalid displayId"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/16 v23, -0x1

    monitor-exit v28

    goto/16 :goto_c

    .line 373
    .end local v22    # "bound":Landroid/graphics/Rect;
    .end local v23    # "displayId":I
    .end local v26    # "params":Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;
    :catchall_97
    move-exception v2

    monitor-exit v28
    :try_end_99
    .catchall {:try_start_5a .. :try_end_99} :catchall_97

    throw v2

    .line 322
    .restart local v22    # "bound":Landroid/graphics/Rect;
    .restart local v23    # "displayId":I
    .restart local v26    # "params":Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;
    :cond_9a
    :try_start_9a
    move-object/from16 v0, v26

    iget v2, v0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_b2

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, mVirtualScreen:Landroid/util/SparseArray;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/VirtualScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/am/VirtualScreen;->setAllowAppTransition(Z)V

    .line 326
    :cond_b2
    move/from16 v0, v23

    move-object/from16 v1, v26

    iput v0, v1, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mDisplayId:I

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .end local v22    # "bound":Landroid/graphics/Rect;
    :cond_c5
    :goto_c5
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setVirtualScreenParams(Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string v8, "VirtualScreenManager"

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityManagerService;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v19

    .line 357
    .local v19, "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    .line 358
    .local v7, "mimeType":Ljava/lang/String;
    if-nez v7, :cond_10f

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_10f

    const-string v2, "content"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10f

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/ActivityManagerService;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v7

    .line 362
    :cond_10f
    move-object/from16 v0, p0

    iget-object v2, v0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v6, p2

    move-object/from16 v17, p3

    invoke-virtual/range {v2 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;ZILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)I

    move-result v27

    .line 364
    .local v27, "res":I
    if-ltz v27, :cond_1a1

    .line 365
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v24

    .line 366
    .local v24, "msg":Landroid/os/Message;
    const/16 v2, 0x3e9

    move-object/from16 v0, v24

    iput v2, v0, Landroid/os/Message;->what:I

    .line 367
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v24

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    move-object/from16 v0, v24

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 372
    .end local v24    # "msg":Landroid/os/Message;
    :cond_14f
    :goto_14f
    monitor-exit v28

    goto/16 :goto_c

    .line 330
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v19    # "userId":I
    .end local v23    # "displayId":I
    .end local v27    # "res":I
    .restart local v22    # "bound":Landroid/graphics/Rect;
    :cond_152
    move-object/from16 v0, v26

    iget v0, v0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mDisplayId:I

    move/from16 v23, v0

    .line 331
    .restart local v23    # "displayId":I
    move-object/from16 v0, p0

    iget-object v2, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks(I)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_c5

    .line 332
    const-string v2, "VirtualScreenManagerService"

    const-string/jumbo v3, "display doesn\'t exist!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/16 v23, -0x1

    monitor-exit v28

    goto/16 :goto_c

    .line 341
    .end local v22    # "bound":Landroid/graphics/Rect;
    .end local v23    # "displayId":I
    :cond_171
    move-object/from16 v0, p0

    iget-object v2, v0, mVirtualScreenByPackage:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 342
    .restart local v23    # "displayId":I
    move-object/from16 v0, v26

    iget v2, v0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_199

    .line 343
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, recreateVirtualScreen(Ljava/lang/String;Landroid/graphics/Rect;)I

    move-result v25

    .line 344
    .local v25, "newDisplayId":I
    if-lez v25, :cond_199

    .line 345
    move/from16 v23, v25

    .line 348
    .end local v25    # "newDisplayId":I
    :cond_199
    move/from16 v0, v23

    move-object/from16 v1, v26

    iput v0, v1, Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenLaunchParams;->mDisplayId:I

    goto/16 :goto_c5

    .line 369
    .restart local v7    # "mimeType":Ljava/lang/String;
    .restart local v19    # "userId":I
    .restart local v27    # "res":I
    :cond_1a1
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, isVirtualScreen(I)Z

    move-result v2

    if-eqz v2, :cond_14f

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->removeVirtualScreen(I)V
    :try_end_1b4
    .catchall {:try_start_9a .. :try_end_1b4} :catchall_97

    goto :goto_14f
.end method

.method public unBindVirtualScreen(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 541
    iget-object v1, p0, mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 542
    const-string v1, "VirtualScreenManagerService"

    const-string/jumbo v2, "unBindVirtualScreen() There wasn\'t Main Virtual Screen."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/4 v1, 0x0

    .line 550
    :goto_11
    return v1

    .line 546
    :cond_12
    const-string v1, "VirtualScreenManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unBindVirtualScreen() package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v2, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 549
    :try_start_2e
    iget-object v1, p0, mVirtualScreenByPackage:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 550
    .local v0, "mainDisplayId":I
    invoke-direct {p0, v0}, unBindVirtualScreenLocked(I)Z

    move-result v1

    monitor-exit v2

    goto :goto_11

    .line 551
    .end local v0    # "mainDisplayId":I
    :catchall_40
    move-exception v1

    monitor-exit v2
    :try_end_42
    .catchall {:try_start_2e .. :try_end_42} :catchall_40

    throw v1
.end method

.method updateConfigurationLocked()V
    .registers 4

    .prologue
    .line 710
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_1
    iget-object v2, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_15

    .line 711
    iget-object v2, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 712
    .local v0, "displayId":I
    invoke-virtual {p0, v0}, updateConfigurationLocked(I)V

    .line 710
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 714
    .end local v0    # "displayId":I
    :cond_15
    return-void
.end method

.method updateConfigurationLocked(I)V
    .registers 5
    .param p1, "displayId"    # I

    .prologue
    .line 717
    iget-object v2, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/VirtualScreen;

    .line 718
    .local v1, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    iget-object v2, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v0

    .line 719
    .local v0, "rotation":I
    invoke-virtual {v1, v0}, Lcom/android/server/am/VirtualScreen;->computeScreenConfiguration(I)V

    .line 720
    return-void
.end method

.method public updateVirtualScreenPosition(F)V
    .registers 16
    .param p1, "scale"    # F

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const-wide/16 v10, 0x0

    .line 728
    invoke-virtual {p0}, clearVirtualScreenPosition()V

    .line 729
    iget-object v4, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "displayNdx":I
    :goto_f
    if-ltz v1, :cond_cb

    .line 730
    iget-object v4, p0, mVirtualScreen:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/VirtualScreen;

    .line 731
    .local v3, "virtualScreen":Lcom/android/server/am/VirtualScreen;
    if-eqz v3, :cond_47

    .line 732
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 733
    .local v2, "position":Landroid/graphics/PointF;
    invoke-virtual {v3}, Lcom/android/server/am/VirtualScreen;->getDisplayId()I

    move-result v0

    .line 734
    .local v0, "displayId":I
    invoke-virtual {p0, v0, v13, v2, p1}, getVirtualScreenPosition(ILandroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/PointF;F)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 735
    iget-object v4, p0, mVirtualScreenPosition:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 738
    :cond_2f
    invoke-virtual {v3}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 739
    iget-object v4, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowManagerService;->isDrawnAppWindow(I)Z

    move-result v4

    if-nez v4, :cond_4a

    .line 740
    iput-boolean v12, p0, mReadyToUpdateOffset:Z

    .line 749
    :cond_3f
    :goto_3f
    iget-object v4, p0, mTransitVirtualScreen:Lcom/android/server/am/VirtualScreen;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 729
    .end local v0    # "displayId":I
    .end local v2    # "position":Landroid/graphics/PointF;
    :cond_47
    :goto_47
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 742
    .restart local v0    # "displayId":I
    .restart local v2    # "position":Landroid/graphics/PointF;
    :cond_4a
    sget-boolean v4, DEBUG_PERFORMANCE:Z

    if-eqz v4, :cond_3f

    iget-wide v4, p0, mOffsetStartTime:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_3f

    .line 743
    const-string v4, "VirtualScreenManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1. Performance Test End : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, mOffsetStartTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iput-wide v10, p0, mOffsetStartTime:J

    goto :goto_3f

    .line 753
    :cond_76
    invoke-virtual {v3}, Lcom/android/server/am/VirtualScreen;->getBindDisplayId()I

    move-result v0

    .line 754
    const/4 v4, -0x1

    if-eq v0, v4, :cond_47

    .line 755
    new-instance v2, Landroid/graphics/PointF;

    .end local v2    # "position":Landroid/graphics/PointF;
    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 756
    .restart local v2    # "position":Landroid/graphics/PointF;
    invoke-virtual {p0, v0, v13, v2, p1}, getVirtualScreenPosition(ILandroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/PointF;F)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 757
    iget-object v4, p0, mVirtualScreenPosition:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 760
    :cond_8d
    invoke-virtual {v3}, Lcom/android/server/am/VirtualScreen;->getVisible()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 761
    iget-object v4, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowManagerService;->isDrawnAppWindow(I)Z

    move-result v4

    if-nez v4, :cond_9e

    .line 762
    iput-boolean v12, p0, mReadyToUpdateOffset:Z

    goto :goto_47

    .line 764
    :cond_9e
    sget-boolean v4, DEBUG_PERFORMANCE:Z

    if-eqz v4, :cond_47

    iget-wide v4, p0, mOffsetMoveBackTime:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_47

    .line 765
    const-string v4, "VirtualScreenManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2. Performance Test End : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, mOffsetMoveBackTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iput-wide v10, p0, mOffsetMoveBackTime:J

    goto/16 :goto_47

    .line 773
    .end local v0    # "displayId":I
    .end local v2    # "position":Landroid/graphics/PointF;
    .end local v3    # "virtualScreen":Lcom/android/server/am/VirtualScreen;
    :cond_cb
    return-void
.end method
