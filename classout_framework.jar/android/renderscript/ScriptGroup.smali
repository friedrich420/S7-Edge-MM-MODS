.class public final Landroid/renderscript/ScriptGroup;
.super Landroid/renderscript/BaseObj;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ScriptGroup$Builder2;,
        Landroid/renderscript/ScriptGroup$Binding;,
        Landroid/renderscript/ScriptGroup$Builder;,
        Landroid/renderscript/ScriptGroup$Input;,
        Landroid/renderscript/ScriptGroup$Future;,
        Landroid/renderscript/ScriptGroup$Closure;,
        Landroid/renderscript/ScriptGroup$Node;,
        Landroid/renderscript/ScriptGroup$ConnectLine;,
        Landroid/renderscript/ScriptGroup$IO;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScriptGroup"


# instance fields
.field private mClosures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/renderscript/ScriptGroup$Closure;",
            ">;"
        }
    .end annotation
.end field

.field mInputs:[Landroid/renderscript/ScriptGroup$IO;

.field private mInputs2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/renderscript/ScriptGroup$Input;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field mOutputs:[Landroid/renderscript/ScriptGroup$IO;

.field private mOutputs2:[Landroid/renderscript/ScriptGroup$Future;


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .registers 5
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 382
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 383
    return-void
.end method

.method constructor <init>(Landroid/renderscript/RenderScript;Ljava/lang/String;Ljava/util/List;Ljava/util/List;[Landroid/renderscript/ScriptGroup$Future;)V
    .registers 12
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "name"    # Ljava/lang/String;
    .param p5, "outputs"    # [Landroid/renderscript/ScriptGroup$Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/renderscript/RenderScript;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/renderscript/ScriptGroup$Closure;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/renderscript/ScriptGroup$Input;",
            ">;[",
            "Landroid/renderscript/ScriptGroup$Future;",
            ")V"
        }
    .end annotation

    .prologue
    .line 387
    .local p3, "closures":Ljava/util/List;, "Ljava/util/List<Landroid/renderscript/ScriptGroup$Closure;>;"
    .local p4, "inputs":Ljava/util/List;, "Ljava/util/List<Landroid/renderscript/ScriptGroup$Input;>;"
    const-wide/16 v4, 0x0

    invoke-direct {p0, v4, v5, p1}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 388
    iput-object p2, p0, mName:Ljava/lang/String;

    .line 389
    iput-object p3, p0, mClosures:Ljava/util/List;

    .line 390
    iput-object p4, p0, mInputs2:Ljava/util/List;

    .line 391
    iput-object p5, p0, mOutputs2:[Landroid/renderscript/ScriptGroup$Future;

    .line 393
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [J

    .line 394
    .local v0, "closureIDs":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    array-length v4, v0

    if-ge v1, v4, :cond_26

    .line 395
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/renderscript/ScriptGroup$Closure;

    invoke-virtual {v4, p1}, Landroid/renderscript/ScriptGroup$Closure;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 394
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 397
    :cond_26
    sget-object v4, Landroid/renderscript/ScriptC;->mCachePath:Ljava/lang/String;

    invoke-virtual {p1, p2, v4, v0}, Landroid/renderscript/RenderScript;->nScriptGroup2Create(Ljava/lang/String;Ljava/lang/String;[J)J

    move-result-wide v2

    .line 398
    .local v2, "id":J
    invoke-virtual {p0, v2, v3}, setID(J)V

    .line 399
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 5

    .prologue
    .line 500
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/renderscript/RenderScript;->nScriptGroupExecute(J)V

    .line 501
    return-void
.end method

.method public varargs execute([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 16
    .param p1, "inputs"    # [Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 411
    array-length v10, p1

    iget-object v11, p0, mInputs2:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_42

    .line 412
    const-string v10, "ScriptGroup"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " receives "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, p1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " inputs, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "less than expected "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, mInputs2:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_41
    :goto_41
    return-object v8

    .line 417
    :cond_42
    array-length v10, p1

    iget-object v11, p0, mInputs2:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v10, v11, :cond_83

    .line 418
    const-string v10, "ScriptGroup"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " receives "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, p1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " inputs, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "more than expected "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, mInputs2:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_83
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_84
    iget-object v10, p0, mInputs2:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_cb

    .line 423
    aget-object v6, p1, v2

    .line 424
    .local v6, "obj":Ljava/lang/Object;
    instance-of v10, v6, Landroid/renderscript/ScriptGroup$Future;

    if-nez v10, :cond_96

    instance-of v10, v6, Landroid/renderscript/ScriptGroup$Input;

    if-eqz v10, :cond_bd

    .line 425
    :cond_96
    const-string v10, "ScriptGroup"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": input "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is a future or unbound value"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 429
    :cond_bd
    iget-object v10, p0, mInputs2:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/renderscript/ScriptGroup$Input;

    .line 430
    .local v9, "unbound":Landroid/renderscript/ScriptGroup$Input;
    invoke-virtual {v9, v6}, Landroid/renderscript/ScriptGroup$Input;->set(Ljava/lang/Object;)V

    .line 422
    add-int/lit8 v2, v2, 0x1

    goto :goto_84

    .line 433
    .end local v6    # "obj":Ljava/lang/Object;
    .end local v9    # "unbound":Landroid/renderscript/ScriptGroup$Input;
    :cond_cb
    iget-object v10, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v11, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v11}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Landroid/renderscript/RenderScript;->nScriptGroup2Execute(J)V

    .line 435
    iget-object v10, p0, mOutputs2:[Landroid/renderscript/ScriptGroup$Future;

    array-length v10, v10

    new-array v8, v10, [Ljava/lang/Object;

    .line 436
    .local v8, "outputObjs":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 437
    iget-object v0, p0, mOutputs2:[Landroid/renderscript/ScriptGroup$Future;

    .local v0, "arr$":[Landroid/renderscript/ScriptGroup$Future;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_e1
    if-ge v4, v5, :cond_41

    aget-object v1, v0, v4

    .line 438
    .local v1, "f":Landroid/renderscript/ScriptGroup$Future;
    invoke-virtual {v1}, Landroid/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 439
    .local v7, "output":Ljava/lang/Object;
    instance-of v10, v7, Landroid/renderscript/ScriptGroup$Input;

    if-eqz v10, :cond_f3

    .line 440
    check-cast v7, Landroid/renderscript/ScriptGroup$Input;

    .end local v7    # "output":Ljava/lang/Object;
    invoke-virtual {v7}, Landroid/renderscript/ScriptGroup$Input;->get()Ljava/lang/Object;

    move-result-object v7

    .line 442
    .restart local v7    # "output":Ljava/lang/Object;
    :cond_f3
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-object v7, v8, v3

    .line 437
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_e1
.end method

.method public setInput(Landroid/renderscript/Script$KernelID;Landroid/renderscript/Allocation;)V
    .registers 11
    .param p1, "s"    # Landroid/renderscript/Script$KernelID;
    .param p2, "a"    # Landroid/renderscript/Allocation;

    .prologue
    .line 459
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_1
    iget-object v1, p0, mInputs:[Landroid/renderscript/ScriptGroup$IO;

    array-length v1, v1

    if-ge v0, v1, :cond_2f

    .line 460
    iget-object v1, p0, mInputs:[Landroid/renderscript/ScriptGroup$IO;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/renderscript/ScriptGroup$IO;->mKID:Landroid/renderscript/Script$KernelID;

    if-ne v1, p1, :cond_2c

    .line 461
    iget-object v1, p0, mInputs:[Landroid/renderscript/ScriptGroup$IO;

    aget-object v1, v1, v0

    iput-object p2, v1, Landroid/renderscript/ScriptGroup$IO;->mAllocation:Landroid/renderscript/Allocation;

    .line 462
    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget-object v4, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v4}, Landroid/renderscript/Script$KernelID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v6, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, p2}, Landroid/renderscript/RenderScript;->safeID(Landroid/renderscript/BaseObj;)J

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->nScriptGroupSetInput(JJJ)V

    .line 463
    return-void

    .line 459
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 466
    :cond_2f
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Script not found"

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setOutput(Landroid/renderscript/Script$KernelID;Landroid/renderscript/Allocation;)V
    .registers 11
    .param p1, "s"    # Landroid/renderscript/Script$KernelID;
    .param p2, "a"    # Landroid/renderscript/Allocation;

    .prologue
    .line 481
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_1
    iget-object v1, p0, mOutputs:[Landroid/renderscript/ScriptGroup$IO;

    array-length v1, v1

    if-ge v0, v1, :cond_2f

    .line 482
    iget-object v1, p0, mOutputs:[Landroid/renderscript/ScriptGroup$IO;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/renderscript/ScriptGroup$IO;->mKID:Landroid/renderscript/Script$KernelID;

    if-ne v1, p1, :cond_2c

    .line 483
    iget-object v1, p0, mOutputs:[Landroid/renderscript/ScriptGroup$IO;

    aget-object v1, v1, v0

    iput-object p2, v1, Landroid/renderscript/ScriptGroup$IO;->mAllocation:Landroid/renderscript/Allocation;

    .line 484
    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget-object v4, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v4}, Landroid/renderscript/Script$KernelID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v6, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, p2}, Landroid/renderscript/RenderScript;->safeID(Landroid/renderscript/BaseObj;)J

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->nScriptGroupSetOutput(JJJ)V

    .line 485
    return-void

    .line 481
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 488
    :cond_2f
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Script not found"

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
