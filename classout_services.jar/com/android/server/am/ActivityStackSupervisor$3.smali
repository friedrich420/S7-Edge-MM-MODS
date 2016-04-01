.class final Lcom/android/server/am/ActivityStackSupervisor$3;
.super Ljava/util/ArrayList;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/am/TaskRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 9458
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(ILcom/android/server/am/TaskRecord;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "object"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 9466
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 9458
    check-cast p2, Lcom/android/server/am/TaskRecord;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, add(ILcom/android/server/am/TaskRecord;)V

    return-void
.end method

.method public add(Lcom/android/server/am/TaskRecord;)Z
    .registers 3
    .param p1, "object"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 9461
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 9458
    check-cast p1, Lcom/android/server/am/TaskRecord;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, add(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/server/am/TaskRecord;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 9476
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/server/am/TaskRecord;>;"
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/server/am/TaskRecord;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 9471
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/server/am/TaskRecord;>;"
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 9481
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0
.end method

.method public remove(I)Lcom/android/server/am/TaskRecord;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 9486
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 9458
    invoke-virtual {p0, p1}, remove(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 9491
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 9501
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 9506
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0
.end method

.method public set(ILcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;
    .registers 4
    .param p1, "index"    # I
    .param p2, "object"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 9496
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 9458
    check-cast p2, Lcom/android/server/am/TaskRecord;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, set(ILcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    return-object v0
.end method
