.class public abstract Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstanceHandler;
.super Ljava/lang/Object;
.source "ContextRelatedInstanceHandler.java"


# static fields
.field static final DEBUG:Z

.field static final DUMP_DETAIL:Z


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected final mContextRelatedInstanceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;",
            ">;"
        }
    .end annotation
.end field

.field final mInstanceType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->DEBUG:Z

    sput-boolean v0, DEBUG:Z

    .line 41
    sget-boolean v0, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->DUMP_DETAIL:Z

    sput-boolean v0, DUMP_DETAIL:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 5
    .param p2, "instanceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "list is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_d
    iput-object p1, p0, mContextRelatedInstanceList:Ljava/util/ArrayList;

    .line 48
    iput-object p2, p0, mInstanceType:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public abstract createContextRelatedInstance(Landroid/content/Context;Ljava/lang/Object;)Z
.end method

.method public abstract dump(Ljava/io/PrintWriter;Ljava/lang/String;ZZ)V
.end method

.method findContextRelatedInstance(Landroid/content/Context;)Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 80
    if-nez p1, :cond_5

    move-object v1, v3

    .line 94
    :goto_4
    return-object v1

    .line 84
    :cond_5
    iget-object v4, p0, mContextRelatedInstanceList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;

    .line 85
    .local v1, "relatedInstance":Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;
    invoke-interface {v1}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;->getObject()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/content/Context;

    if-eqz v4, :cond_b

    .line 86
    invoke-interface {v1}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 87
    .local v2, "tmpContext":Landroid/content/Context;
    if-eqz v2, :cond_b

    .line 88
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_4

    .end local v1    # "relatedInstance":Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;
    .end local v2    # "tmpContext":Landroid/content/Context;
    :cond_2e
    move-object v1, v3

    .line 94
    goto :goto_4
.end method

.method public garbageCollect()V
    .registers 6

    .prologue
    .line 111
    const/4 v1, 0x0

    .line 112
    .local v1, "instanceSize":I
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_b

    .line 113
    iget-object v4, p0, mContextRelatedInstanceList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 115
    :cond_b
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 116
    .local v3, "removingContextRelatedInstanceList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;>;"
    iget-object v4, p0, mContextRelatedInstanceList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;

    .line 117
    .local v2, "relation":Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;
    invoke-interface {v2}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;->getObject()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2f

    .line 118
    invoke-interface {v2}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;->release()V

    .line 119
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 121
    :cond_2f
    invoke-interface {v2}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;->garbageCollect()V

    goto :goto_16

    .line 124
    .end local v2    # "relation":Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;
    :cond_33
    iget-object v4, p0, mContextRelatedInstanceList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 125
    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 126
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_3f

    .line 130
    :cond_3f
    return-void
.end method

.method public propagateChangedRelationInfo(Ljava/util/ArrayList;I)V
    .registers 11
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Context;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "contextList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Context;>;"
    if-eqz p1, :cond_6e

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6e

    .line 59
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    .line 60
    .local v4, "relationContext":Landroid/content/Context;
    sget-boolean v5, DEBUG:Z

    if-eqz v5, :cond_34

    .line 61
    iget-object v5, p0, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " propagate to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_34
    if-eqz v4, :cond_c

    instance-of v5, v4, Landroid/content/Context;

    if-eqz v5, :cond_c

    .line 64
    iget-object v5, p0, mContextRelatedInstanceList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_40
    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;

    .line 65
    .local v3, "relatedInstance":Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;
    invoke-interface {v3}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;->getObject()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Landroid/content/Context;

    if-eqz v5, :cond_40

    .line 66
    invoke-interface {v3}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 67
    .local v0, "ctx":Landroid/content/Context;
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 68
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v5}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;->updateRelatedInfo([Ljava/lang/Object;)V

    goto :goto_40

    .line 75
    .end local v0    # "ctx":Landroid/content/Context;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "relatedInstance":Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;
    .end local v4    # "relationContext":Landroid/content/Context;
    :cond_6e
    invoke-virtual {p0}, garbageCollect()V

    .line 76
    return-void
.end method

.method public removeContext(Landroid/content/Context;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-virtual {p0, p1}, findContextRelatedInstance(Landroid/content/Context;)Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;

    move-result-object v0

    .line 99
    .local v0, "relation":Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;
    if-eqz v0, :cond_16

    .line 100
    invoke-interface {v0}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;->release()V

    .line 101
    iget-object v1, p0, mContextRelatedInstanceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 102
    invoke-virtual {p0}, garbageCollect()V

    .line 103
    const/4 v1, 0x1

    .line 107
    :goto_15
    return v1

    .line 106
    :cond_16
    invoke-virtual {p0}, garbageCollect()V

    .line 107
    const/4 v1, 0x0

    goto :goto_15
.end method
