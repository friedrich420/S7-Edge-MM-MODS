.class public final Landroid/renderscript/ScriptGroup$Input;
.super Ljava/lang/Object;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Input"
.end annotation


# instance fields
.field mArgIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/renderscript/ScriptGroup$Closure;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mFieldID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/renderscript/ScriptGroup$Closure;",
            "Landroid/renderscript/Script$FieldID;",
            ">;>;"
        }
    .end annotation
.end field

.field mValue:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mFieldID:Ljava/util/List;

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mArgIndex:Ljava/util/List;

    .line 349
    return-void
.end method


# virtual methods
.method addReference(Landroid/renderscript/ScriptGroup$Closure;I)V
    .registers 5
    .param p1, "closure"    # Landroid/renderscript/ScriptGroup$Closure;
    .param p2, "index"    # I

    .prologue
    .line 352
    iget-object v0, p0, mArgIndex:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    return-void
.end method

.method addReference(Landroid/renderscript/ScriptGroup$Closure;Landroid/renderscript/Script$FieldID;)V
    .registers 5
    .param p1, "closure"    # Landroid/renderscript/ScriptGroup$Closure;
    .param p2, "fieldID"    # Landroid/renderscript/Script$FieldID;

    .prologue
    .line 356
    iget-object v0, p0, mFieldID:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    return-void
.end method

.method get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, mValue:Ljava/lang/Object;

    return-object v0
.end method

.method set(Ljava/lang/Object;)V
    .registers 9
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 360
    iput-object p1, p0, mValue:Ljava/lang/Object;

    .line 361
    iget-object v6, p0, mArgIndex:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 362
    .local v5, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/renderscript/ScriptGroup$Closure;Ljava/lang/Integer;>;"
    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/renderscript/ScriptGroup$Closure;

    .line 363
    .local v0, "closure":Landroid/renderscript/ScriptGroup$Closure;
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 364
    .local v3, "index":I
    invoke-virtual {v0, v3, p1}, Landroid/renderscript/ScriptGroup$Closure;->setArg(ILjava/lang/Object;)V

    goto :goto_8

    .line 366
    .end local v0    # "closure":Landroid/renderscript/ScriptGroup$Closure;
    .end local v3    # "index":I
    .end local v5    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/renderscript/ScriptGroup$Closure;Ljava/lang/Integer;>;"
    :cond_24
    iget-object v6, p0, mFieldID:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 367
    .local v4, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/renderscript/ScriptGroup$Closure;Landroid/renderscript/Script$FieldID;>;"
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/renderscript/ScriptGroup$Closure;

    .line 368
    .restart local v0    # "closure":Landroid/renderscript/ScriptGroup$Closure;
    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/renderscript/Script$FieldID;

    .line 369
    .local v1, "fieldID":Landroid/renderscript/Script$FieldID;
    invoke-virtual {v0, v1, p1}, Landroid/renderscript/ScriptGroup$Closure;->setGlobal(Landroid/renderscript/Script$FieldID;Ljava/lang/Object;)V

    goto :goto_2a

    .line 371
    .end local v0    # "closure":Landroid/renderscript/ScriptGroup$Closure;
    .end local v1    # "fieldID":Landroid/renderscript/Script$FieldID;
    .end local v4    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/renderscript/ScriptGroup$Closure;Landroid/renderscript/Script$FieldID;>;"
    :cond_42
    return-void
.end method
