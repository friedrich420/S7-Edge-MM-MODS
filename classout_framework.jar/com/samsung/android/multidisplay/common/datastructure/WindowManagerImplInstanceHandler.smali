.class public Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceHandler;
.super Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstanceHandler;
.source "WindowManagerImplInstanceHandler.java"


# static fields
.field private static final mWindowManagerImplWrapperList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, mWindowManagerImplWrapperList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 37
    sget-object v0, mWindowManagerImplWrapperList:Ljava/util/ArrayList;

    const-class v1, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstanceHandler;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 38
    const-class v0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, TAG:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public createContextRelatedInstance(Landroid/content/Context;Ljava/lang/Object;)Z
    .registers 8
    .param p1, "creator"    # Landroid/content/Context;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 43
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_20

    .line 44
    iget-object v2, p0, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createContextRelatedInstance() : context="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getOuterContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_20
    if-eqz p2, :cond_26

    instance-of v2, p2, Landroid/view/WindowManagerImpl;

    if-nez v2, :cond_28

    .line 46
    :cond_26
    const/4 v2, 0x0

    .line 67
    .end local p2    # "object":Ljava/lang/Object;
    :goto_27
    return v2

    .line 50
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_28
    invoke-virtual {p0, p1}, findContextRelatedInstance(Landroid/content/Context;)Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;

    move-result-object v1

    .line 51
    .local v1, "relatedInstance":Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;
    if-eqz v1, :cond_7a

    instance-of v2, v1, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;

    if-eqz v2, :cond_7a

    .line 52
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_3d

    .line 53
    iget-object v2, p0, TAG:Ljava/lang/String;

    const-string v3, "createContextRelatedInstance() : instance already exist for creator!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    move-object v0, v1

    .line 55
    check-cast v0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;

    .line 61
    .local v0, "creatorWindowManagerImplWrapper":Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;
    :goto_40
    check-cast p2, Landroid/view/WindowManagerImpl;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->addWindowManagerImplRef(Landroid/view/WindowManagerImpl;)V

    .line 62
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_75

    .line 63
    iget-object v2, p0, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createContextRelatedInstance() : add referce (size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, mWindowManagerImplWrapperList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for creator "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getOuterContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_75
    invoke-virtual {p0}, garbageCollect()V

    .line 67
    const/4 v2, 0x1

    goto :goto_27

    .line 57
    .end local v0    # "creatorWindowManagerImplWrapper":Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_7a
    new-instance v0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;

    invoke-direct {v0, p1}, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;-><init>(Landroid/content/Context;)V

    .line 58
    .restart local v0    # "creatorWindowManagerImplWrapper":Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;
    sget-object v2, mWindowManagerImplWrapperList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;ZZ)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpDetail"    # Z
    .param p4, "dumpCallStack"    # Z

    .prologue
    .line 72
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_b

    .line 73
    iget-object v4, p0, TAG:Ljava/lang/String;

    const-string v5, "dump()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 77
    const-string v4, "WindowManagerImpl instance handler : "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 80
    sget-object v4, mWindowManagerImplWrapperList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 82
    sget-object v4, mWindowManagerImplWrapperList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_d0

    .line 83
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 84
    const-string/jumbo v4, "window manager wrappers = {"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    sget-object v4, mWindowManagerImplWrapperList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_65
    :goto_65
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;

    .line 86
    .local v2, "relatedInstance":Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;
    instance-of v4, v2, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;

    if-eqz v4, :cond_65

    move-object v3, v2

    .line 87
    check-cast v3, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;

    .line 88
    .local v3, "windowManagerImplWrapper":Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_94

    .line 89
    iget-object v4, p0, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dump() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_94
    if-eqz p3, :cond_ad

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4, p4}, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_65

    .line 94
    :cond_ad
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_65

    .line 99
    .end local v2    # "relatedInstance":Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;
    .end local v3    # "windowManagerImplWrapper":Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;
    :cond_c7
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    const-string/jumbo v4, "}"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_d0
    return-void
.end method
