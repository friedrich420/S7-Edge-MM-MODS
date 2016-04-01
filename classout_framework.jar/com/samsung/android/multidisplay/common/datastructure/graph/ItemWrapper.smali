.class public Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;
.super Ljava/lang/Object;
.source "ItemWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field dummy:Z

.field item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<TE;>;"
    .local p1, "_itemRef":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-nez p1, :cond_9

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, dummy:Z

    .line 42
    :goto_8
    return-void

    .line 39
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, dummy:Z

    .line 40
    iput-object p1, p0, item:Ljava/lang/Object;

    goto :goto_8
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<TE;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    instance-of v3, p1, Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;

    if-eqz v3, :cond_42

    move-object v0, p1

    .line 70
    check-cast v0, Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;

    .line 71
    .local v0, "itemWrapper":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<TE;>;"
    invoke-virtual {v0}, getWrappedItem()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_34

    iget-object v3, p0, item:Ljava/lang/Object;

    if-eqz v3, :cond_34

    .line 72
    iget-object v3, p0, item:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, v0, item:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 73
    iget-object v3, p0, item:Ljava/lang/Object;

    iget-object v4, v0, item:Ljava/lang/Object;

    if-ne v3, v4, :cond_2c

    .line 82
    .end local v0    # "itemWrapper":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<TE;>;"
    :cond_2b
    :goto_2b
    return v1

    .restart local v0    # "itemWrapper":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<TE;>;"
    :cond_2c
    move v1, v2

    .line 73
    goto :goto_2b

    .line 75
    :cond_2e
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    .line 76
    :cond_34
    iget-object v3, v0, item:Ljava/lang/Object;

    if-nez v3, :cond_40

    iget-object v3, p0, item:Ljava/lang/Object;

    if-nez v3, :cond_40

    .line 78
    if-eq v0, p0, :cond_2b

    move v1, v2

    goto :goto_2b

    :cond_40
    move v1, v2

    .line 80
    goto :goto_2b

    .end local v0    # "itemWrapper":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<TE;>;"
    :cond_42
    move v1, v2

    .line 82
    goto :goto_2b
.end method

.method public getWrappedItem()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<TE;>;"
    iget-object v0, p0, item:Ljava/lang/Object;

    return-object v0
.end method

.method public isDummyWrappedItem()Z
    .registers 2

    .prologue
    .line 49
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<TE;>;"
    iget-boolean v0, p0, dummy:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 54
    .local p0, "this":Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper;, "Lcom/samsung/android/multidisplay/common/datastructure/graph/ItemWrapper<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 57
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, dummy:Z

    if-eqz v1, :cond_15

    .line 58
    const-string v1, "dummy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :goto_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 60
    :cond_15
    iget-object v1, p0, item:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_10
.end method
