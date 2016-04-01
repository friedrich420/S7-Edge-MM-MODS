.class public Landroid/renderscript/Script;
.super Landroid/renderscript/BaseObj;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Script$LaunchOptions;,
        Landroid/renderscript/Script$FieldBase;,
        Landroid/renderscript/Script$Builder;,
        Landroid/renderscript/Script$FieldID;,
        Landroid/renderscript/Script$InvokeID;,
        Landroid/renderscript/Script$KernelID;
    }
.end annotation


# instance fields
.field private final mFIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/renderscript/Script$FieldID;",
            ">;"
        }
    .end annotation
.end field

.field private final mIIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/renderscript/Script$InvokeID;",
            ">;"
        }
    .end annotation
.end field

.field mInIdsBuffer:[J

.field private final mKIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/renderscript/Script$KernelID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .registers 5
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 289
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mKIDs:Landroid/util/SparseArray;

    .line 86
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mIIDs:Landroid/util/SparseArray;

    .line 124
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mFIDs:Landroid/util/SparseArray;

    .line 291
    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, mInIdsBuffer:[J

    .line 292
    return-void
.end method


# virtual methods
.method public bindAllocation(Landroid/renderscript/Allocation;I)V
    .registers 11
    .param p1, "va"    # Landroid/renderscript/Allocation;
    .param p2, "slot"    # I

    .prologue
    .line 300
    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 301
    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, p1}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 302
    if-eqz p1, :cond_51

    .line 304
    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 306
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_3e

    .line 307
    iget-object v7, p1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 308
    .local v7, "t":Landroid/renderscript/Type;
    invoke-virtual {v7}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v1

    if-nez v1, :cond_36

    invoke-virtual {v7}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v1

    if-nez v1, :cond_36

    invoke-virtual {v7}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-nez v1, :cond_36

    invoke-virtual {v7}, Landroid/renderscript/Type;->getZ()I

    move-result v1

    if-eqz v1, :cond_3e

    .line 311
    :cond_36
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "API 20+ only allows simple 1D allocations to be used with bind."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 316
    .end local v7    # "t":Landroid/renderscript/Type;
    :cond_3e
    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget-object v4, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nScriptBindAllocation(JJI)V

    .line 320
    .end local v0    # "context":Landroid/content/Context;
    :goto_50
    return-void

    .line 318
    :cond_51
    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nScriptBindAllocation(JJI)V

    goto :goto_50
.end method

.method protected createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;
    .registers 11
    .param p1, "slot"    # I
    .param p2, "e"    # Landroid/renderscript/Element;

    .prologue
    .line 129
    iget-object v4, p0, mFIDs:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/Script$FieldID;

    .line 130
    .local v1, "f":Landroid/renderscript/Script$FieldID;
    if-eqz v1, :cond_c

    move-object v0, v1

    .line 141
    .end local v1    # "f":Landroid/renderscript/Script$FieldID;
    .local v0, "f":Ljava/lang/Object;
    :goto_b
    return-object v0

    .line 134
    .end local v0    # "f":Ljava/lang/Object;
    .restart local v1    # "f":Landroid/renderscript/Script$FieldID;
    :cond_c
    iget-object v4, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v5, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v5}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7, p1}, Landroid/renderscript/RenderScript;->nScriptFieldIDCreate(JI)J

    move-result-wide v2

    .line 135
    .local v2, "id":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_26

    .line 136
    new-instance v4, Landroid/renderscript/RSDriverException;

    const-string v5, "Failed to create FieldID"

    invoke-direct {v4, v5}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 139
    :cond_26
    new-instance v1, Landroid/renderscript/Script$FieldID;

    .end local v1    # "f":Landroid/renderscript/Script$FieldID;
    iget-object v4, p0, mRS:Landroid/renderscript/RenderScript;

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Script$FieldID;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Script;I)V

    .line 140
    .restart local v1    # "f":Landroid/renderscript/Script$FieldID;
    iget-object v4, p0, mFIDs:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v1

    .line 141
    .restart local v0    # "f":Ljava/lang/Object;
    goto :goto_b
.end method

.method protected createInvokeID(I)Landroid/renderscript/Script$InvokeID;
    .registers 10
    .param p1, "slot"    # I

    .prologue
    .line 91
    iget-object v4, p0, mIIDs:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/Script$InvokeID;

    .line 92
    .local v1, "i":Landroid/renderscript/Script$InvokeID;
    if-eqz v1, :cond_c

    move-object v0, v1

    .line 103
    .end local v1    # "i":Landroid/renderscript/Script$InvokeID;
    .local v0, "i":Ljava/lang/Object;
    :goto_b
    return-object v0

    .line 96
    .end local v0    # "i":Ljava/lang/Object;
    .restart local v1    # "i":Landroid/renderscript/Script$InvokeID;
    :cond_c
    iget-object v4, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v5, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v5}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7, p1}, Landroid/renderscript/RenderScript;->nScriptInvokeIDCreate(JI)J

    move-result-wide v2

    .line 97
    .local v2, "id":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_26

    .line 98
    new-instance v4, Landroid/renderscript/RSDriverException;

    const-string v5, "Failed to create KernelID"

    invoke-direct {v4, v5}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 101
    :cond_26
    new-instance v1, Landroid/renderscript/Script$InvokeID;

    .end local v1    # "i":Landroid/renderscript/Script$InvokeID;
    iget-object v4, p0, mRS:Landroid/renderscript/RenderScript;

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Landroid/renderscript/Script$InvokeID;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Script;I)V

    .line 102
    .restart local v1    # "i":Landroid/renderscript/Script$InvokeID;
    iget-object v4, p0, mIIDs:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v1

    .line 103
    .restart local v0    # "i":Ljava/lang/Object;
    goto :goto_b
.end method

.method protected createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;
    .registers 13
    .param p1, "slot"    # I
    .param p2, "sig"    # I
    .param p3, "ein"    # Landroid/renderscript/Element;
    .param p4, "eout"    # Landroid/renderscript/Element;

    .prologue
    .line 53
    iget-object v4, p0, mKIDs:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/Script$KernelID;

    .line 54
    .local v1, "k":Landroid/renderscript/Script$KernelID;
    if-eqz v1, :cond_c

    move-object v0, v1

    .line 65
    .end local v1    # "k":Landroid/renderscript/Script$KernelID;
    .local v0, "k":Ljava/lang/Object;
    :goto_b
    return-object v0

    .line 58
    .end local v0    # "k":Ljava/lang/Object;
    .restart local v1    # "k":Landroid/renderscript/Script$KernelID;
    :cond_c
    iget-object v4, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v5, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v5}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7, p1, p2}, Landroid/renderscript/RenderScript;->nScriptKernelIDCreate(JII)J

    move-result-wide v2

    .line 59
    .local v2, "id":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_26

    .line 60
    new-instance v4, Landroid/renderscript/RSDriverException;

    const-string v5, "Failed to create KernelID"

    invoke-direct {v4, v5}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 63
    :cond_26
    new-instance v1, Landroid/renderscript/Script$KernelID;

    .end local v1    # "k":Landroid/renderscript/Script$KernelID;
    iget-object v4, p0, mRS:Landroid/renderscript/RenderScript;

    move-object v5, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Landroid/renderscript/Script$KernelID;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Script;II)V

    .line 64
    .restart local v1    # "k":Landroid/renderscript/Script$KernelID;
    iget-object v4, p0, mKIDs:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v1

    .line 65
    .restart local v0    # "k":Ljava/lang/Object;
    goto :goto_b
.end method

.method protected forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V
    .registers 11
    .param p1, "slot"    # I
    .param p2, "ain"    # Landroid/renderscript/Allocation;
    .param p3, "aout"    # Landroid/renderscript/Allocation;
    .param p4, "v"    # Landroid/renderscript/FieldPacker;

    .prologue
    .line 171
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    .line 172
    return-void
.end method

.method protected forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 16
    .param p1, "slot"    # I
    .param p2, "ain"    # Landroid/renderscript/Allocation;
    .param p3, "aout"    # Landroid/renderscript/Allocation;
    .param p4, "v"    # Landroid/renderscript/FieldPacker;
    .param p5, "sc"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    const/4 v2, 0x0

    .line 181
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 182
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, p2}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 183
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, p3}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 185
    if-nez p2, :cond_1e

    if-nez p3, :cond_1e

    if-nez p5, :cond_1e

    .line 186
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "At least one of input allocation, output allocation, or LaunchOptions is required to be non-null."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_1e
    const/4 v5, 0x0

    .line 191
    .local v5, "in_ids":[J
    if-eqz p2, :cond_2b

    .line 192
    iget-object v5, p0, mInIdsBuffer:[J

    .line 193
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p2, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    aput-wide v0, v5, v2

    .line 196
    :cond_2b
    const-wide/16 v6, 0x0

    .line 197
    .local v6, "out_id":J
    if-eqz p3, :cond_35

    .line 198
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p3, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    .line 201
    :cond_35
    const/4 v8, 0x0

    .line 202
    .local v8, "params":[B
    if-eqz p4, :cond_3c

    .line 203
    invoke-virtual {p4}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v8

    .line 206
    :cond_3c
    const/4 v9, 0x0

    .line 207
    .local v9, "limits":[I
    if-eqz p5, :cond_6b

    .line 208
    const/4 v0, 0x6

    new-array v9, v0, [I

    .line 210
    # getter for: Landroid/renderscript/Script$LaunchOptions;->xstart:I
    invoke-static {p5}, Landroid/renderscript/Script$LaunchOptions;->access$000(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v0

    aput v0, v9, v2

    .line 211
    const/4 v0, 0x1

    # getter for: Landroid/renderscript/Script$LaunchOptions;->xend:I
    invoke-static {p5}, Landroid/renderscript/Script$LaunchOptions;->access$100(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v1

    aput v1, v9, v0

    .line 212
    const/4 v0, 0x2

    # getter for: Landroid/renderscript/Script$LaunchOptions;->ystart:I
    invoke-static {p5}, Landroid/renderscript/Script$LaunchOptions;->access$200(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v1

    aput v1, v9, v0

    .line 213
    const/4 v0, 0x3

    # getter for: Landroid/renderscript/Script$LaunchOptions;->yend:I
    invoke-static {p5}, Landroid/renderscript/Script$LaunchOptions;->access$300(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v1

    aput v1, v9, v0

    .line 214
    const/4 v0, 0x4

    # getter for: Landroid/renderscript/Script$LaunchOptions;->zstart:I
    invoke-static {p5}, Landroid/renderscript/Script$LaunchOptions;->access$400(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v1

    aput v1, v9, v0

    .line 215
    const/4 v0, 0x5

    # getter for: Landroid/renderscript/Script$LaunchOptions;->zend:I
    invoke-static {p5}, Landroid/renderscript/Script$LaunchOptions;->access$500(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v1

    aput v1, v9, v0

    .line 218
    :cond_6b
    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    move v4, p1

    invoke-virtual/range {v1 .. v9}, Landroid/renderscript/RenderScript;->nScriptForEach(JI[JJ[B[I)V

    .line 219
    return-void
.end method

.method protected forEach(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V
    .registers 11
    .param p1, "slot"    # I
    .param p2, "ains"    # [Landroid/renderscript/Allocation;
    .param p3, "aout"    # Landroid/renderscript/Allocation;
    .param p4, "v"    # Landroid/renderscript/FieldPacker;

    .prologue
    .line 228
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, forEach(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    .line 229
    return-void
.end method

.method protected forEach(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V
    .registers 22
    .param p1, "slot"    # I
    .param p2, "ains"    # [Landroid/renderscript/Allocation;
    .param p3, "aout"    # Landroid/renderscript/Allocation;
    .param p4, "v"    # Landroid/renderscript/FieldPacker;
    .param p5, "sc"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 238
    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    .line 239
    if-eqz p2, :cond_1b

    .line 240
    move-object/from16 v12, p2

    .local v12, "arr$":[Landroid/renderscript/Allocation;
    array-length v15, v12

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_d
    if-ge v13, v15, :cond_1b

    aget-object v2, v12, v13

    .line 241
    .local v2, "ain":Landroid/renderscript/Allocation;
    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v2}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 240
    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    .line 244
    .end local v2    # "ain":Landroid/renderscript/Allocation;
    .end local v12    # "arr$":[Landroid/renderscript/Allocation;
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 246
    if-nez p2, :cond_30

    if-nez p3, :cond_30

    .line 247
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "At least one of ain or aout is required to be non-null."

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 252
    :cond_30
    if-eqz p2, :cond_4c

    .line 253
    move-object/from16 v0, p2

    array-length v3, v0

    new-array v7, v3, [J

    .line 254
    .local v7, "in_ids":[J
    const/4 v14, 0x0

    .local v14, "index":I
    :goto_38
    move-object/from16 v0, p2

    array-length v3, v0

    if-ge v14, v3, :cond_4d

    .line 255
    aget-object v3, p2, v14

    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    aput-wide v4, v7, v14

    .line 254
    add-int/lit8 v14, v14, 0x1

    goto :goto_38

    .line 258
    .end local v7    # "in_ids":[J
    .end local v14    # "index":I
    :cond_4c
    const/4 v7, 0x0

    .line 261
    .restart local v7    # "in_ids":[J
    :cond_4d
    const-wide/16 v8, 0x0

    .line 262
    .local v8, "out_id":J
    if-eqz p3, :cond_5b

    .line 263
    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    .line 266
    :cond_5b
    const/4 v10, 0x0

    .line 267
    .local v10, "params":[B
    if-eqz p4, :cond_62

    .line 268
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v10

    .line 271
    :cond_62
    const/4 v11, 0x0

    .line 272
    .local v11, "limits":[I
    if-eqz p5, :cond_92

    .line 273
    const/4 v3, 0x6

    new-array v11, v3, [I

    .line 275
    const/4 v3, 0x0

    # getter for: Landroid/renderscript/Script$LaunchOptions;->xstart:I
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$000(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v4

    aput v4, v11, v3

    .line 276
    const/4 v3, 0x1

    # getter for: Landroid/renderscript/Script$LaunchOptions;->xend:I
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$100(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v4

    aput v4, v11, v3

    .line 277
    const/4 v3, 0x2

    # getter for: Landroid/renderscript/Script$LaunchOptions;->ystart:I
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$200(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v4

    aput v4, v11, v3

    .line 278
    const/4 v3, 0x3

    # getter for: Landroid/renderscript/Script$LaunchOptions;->yend:I
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$300(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v4

    aput v4, v11, v3

    .line 279
    const/4 v3, 0x4

    # getter for: Landroid/renderscript/Script$LaunchOptions;->zstart:I
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$400(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v4

    aput v4, v11, v3

    .line 280
    const/4 v3, 0x5

    # getter for: Landroid/renderscript/Script$LaunchOptions;->zend:I
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$500(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v4

    aput v4, v11, v3

    .line 283
    :cond_92
    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    move/from16 v6, p1

    invoke-virtual/range {v3 .. v11}, Landroid/renderscript/RenderScript;->nScriptForEach(JI[JJ[B[I)V

    .line 284
    return-void
.end method

.method public getVarB(I)Z
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 376
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarI(JI)I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getVarD(I)D
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 341
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarD(JI)D

    move-result-wide v0

    return-wide v0
.end method

.method public getVarF(I)F
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 330
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarF(JI)F

    move-result v0

    return v0
.end method

.method public getVarI(I)I
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 352
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarI(JI)I

    move-result v0

    return v0
.end method

.method public getVarJ(I)J
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 364
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarJ(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVarV(ILandroid/renderscript/FieldPacker;)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/FieldPacker;

    .prologue
    .line 410
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v1

    invoke-virtual {v0, v2, v3, p1, v1}, Landroid/renderscript/RenderScript;->nScriptGetVarV(JI[B)V

    .line 411
    return-void
.end method

.method protected invoke(I)V
    .registers 6
    .param p1, "slot"    # I

    .prologue
    .line 150
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nScriptInvoke(JI)V

    .line 151
    return-void
.end method

.method protected invoke(ILandroid/renderscript/FieldPacker;)V
    .registers 7
    .param p1, "slot"    # I
    .param p2, "v"    # Landroid/renderscript/FieldPacker;

    .prologue
    .line 158
    if-eqz p2, :cond_12

    .line 159
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v1

    invoke-virtual {v0, v2, v3, p1, v1}, Landroid/renderscript/RenderScript;->nScriptInvokeV(JI[B)V

    .line 163
    :goto_11
    return-void

    .line 161
    :cond_12
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nScriptInvoke(JI)V

    goto :goto_11
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .registers 7
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 414
    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 416
    :try_start_5
    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/renderscript/RenderScript;->nScriptSetTimeZone(J[B)V
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_16} :catch_17

    .line 420
    return-void

    .line 417
    :catch_17
    move-exception v0

    .line 418
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setVar(ID)V
    .registers 10
    .param p1, "index"    # I
    .param p2, "v"    # D

    .prologue
    .line 338
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nScriptSetVarD(JID)V

    .line 339
    return-void
.end method

.method public setVar(IF)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "v"    # F

    .prologue
    .line 327
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1, p2}, Landroid/renderscript/RenderScript;->nScriptSetVarF(JIF)V

    .line 328
    return-void
.end method

.method public setVar(II)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "v"    # I

    .prologue
    .line 349
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1, p2}, Landroid/renderscript/RenderScript;->nScriptSetVarI(JII)V

    .line 350
    return-void
.end method

.method public setVar(IJ)V
    .registers 10
    .param p1, "index"    # I
    .param p2, "v"    # J

    .prologue
    .line 361
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nScriptSetVarJ(JIJ)V

    .line 362
    return-void
.end method

.method public setVar(ILandroid/renderscript/BaseObj;)V
    .registers 9
    .param p1, "index"    # I
    .param p2, "o"    # Landroid/renderscript/BaseObj;

    .prologue
    .line 384
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 385
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, p2}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 386
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    if-nez p2, :cond_1b

    const-wide/16 v4, 0x0

    :goto_16
    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nScriptSetVarObj(JIJ)V

    .line 387
    return-void

    .line 386
    :cond_1b
    iget-object v3, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p2, v3}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    goto :goto_16
.end method

.method public setVar(ILandroid/renderscript/FieldPacker;)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/FieldPacker;

    .prologue
    .line 394
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v1

    invoke-virtual {v0, v2, v3, p1, v1}, Landroid/renderscript/RenderScript;->nScriptSetVarV(JI[B)V

    .line 395
    return-void
.end method

.method public setVar(ILandroid/renderscript/FieldPacker;Landroid/renderscript/Element;[I)V
    .registers 14
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/renderscript/FieldPacker;
    .param p3, "e"    # Landroid/renderscript/Element;
    .param p4, "dims"    # [I

    .prologue
    .line 402
    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v5

    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p3, v0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    move v4, p1

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->nScriptSetVarVE(JI[BJ[I)V

    .line 403
    return-void
.end method

.method public setVar(IZ)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "v"    # Z

    .prologue
    .line 373
    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    if-eqz p2, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {v1, v2, v3, p1, v0}, Landroid/renderscript/RenderScript;->nScriptSetVarI(JII)V

    .line 374
    return-void

    .line 373
    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method
