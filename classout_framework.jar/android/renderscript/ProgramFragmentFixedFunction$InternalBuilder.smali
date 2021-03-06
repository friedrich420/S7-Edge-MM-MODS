.class Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;
.super Landroid/renderscript/Program$BaseProgramBuilder;
.source "ProgramFragmentFixedFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramFragmentFixedFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InternalBuilder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .registers 2
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/renderscript/Program$BaseProgramBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 41
    return-void
.end method


# virtual methods
.method public create()Landroid/renderscript/ProgramFragmentFixedFunction;
    .registers 11

    .prologue
    .line 51
    iget-object v8, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v8}, Landroid/renderscript/RenderScript;->validate()V

    .line 52
    iget v8, p0, mInputCount:I

    iget v9, p0, mOutputCount:I

    add-int/2addr v8, v9

    iget v9, p0, mConstantCount:I

    add-int/2addr v8, v9

    iget v9, p0, mTextureCount:I

    add-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0x2

    new-array v7, v8, [J

    .line 53
    .local v7, "tmp":[J
    iget v8, p0, mTextureCount:I

    new-array v6, v8, [Ljava/lang/String;

    .line 54
    .local v6, "texNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 56
    .local v1, "idx":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    iget v8, p0, mInputCount:I

    if-ge v0, v8, :cond_38

    .line 57
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "idx":I
    .local v4, "idx":I
    sget-object v8, Landroid/renderscript/Program$ProgramParam;->INPUT:Landroid/renderscript/Program$ProgramParam;

    iget v8, v8, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v8, v8

    aput-wide v8, v7, v1

    .line 58
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "idx":I
    .restart local v1    # "idx":I
    iget-object v8, p0, mInputs:[Landroid/renderscript/Element;

    aget-object v8, v8, v0

    iget-object v9, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v8, v9}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    aput-wide v8, v7, v4

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 60
    :cond_38
    const/4 v0, 0x0

    :goto_39
    iget v8, p0, mOutputCount:I

    if-ge v0, v8, :cond_57

    .line 61
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "idx":I
    .restart local v4    # "idx":I
    sget-object v8, Landroid/renderscript/Program$ProgramParam;->OUTPUT:Landroid/renderscript/Program$ProgramParam;

    iget v8, v8, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v8, v8

    aput-wide v8, v7, v1

    .line 62
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "idx":I
    .restart local v1    # "idx":I
    iget-object v8, p0, mOutputs:[Landroid/renderscript/Element;

    aget-object v8, v8, v0

    iget-object v9, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v8, v9}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    aput-wide v8, v7, v4

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 64
    :cond_57
    const/4 v0, 0x0

    :goto_58
    iget v8, p0, mConstantCount:I

    if-ge v0, v8, :cond_76

    .line 65
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "idx":I
    .restart local v4    # "idx":I
    sget-object v8, Landroid/renderscript/Program$ProgramParam;->CONSTANT:Landroid/renderscript/Program$ProgramParam;

    iget v8, v8, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v8, v8

    aput-wide v8, v7, v1

    .line 66
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "idx":I
    .restart local v1    # "idx":I
    iget-object v8, p0, mConstants:[Landroid/renderscript/Type;

    aget-object v8, v8, v0

    iget-object v9, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v8, v9}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    aput-wide v8, v7, v4

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 68
    :cond_76
    const/4 v0, 0x0

    :goto_77
    iget v8, p0, mTextureCount:I

    if-ge v0, v8, :cond_98

    .line 69
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "idx":I
    .restart local v4    # "idx":I
    sget-object v8, Landroid/renderscript/Program$ProgramParam;->TEXTURE_TYPE:Landroid/renderscript/Program$ProgramParam;

    iget v8, v8, Landroid/renderscript/Program$ProgramParam;->mID:I

    int-to-long v8, v8

    aput-wide v8, v7, v1

    .line 70
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "idx":I
    .restart local v1    # "idx":I
    iget-object v8, p0, mTextureTypes:[Landroid/renderscript/Program$TextureType;

    aget-object v8, v8, v0

    iget v8, v8, Landroid/renderscript/Program$TextureType;->mID:I

    int-to-long v8, v8

    aput-wide v8, v7, v4

    .line 71
    iget-object v8, p0, mTextureNames:[Ljava/lang/String;

    aget-object v8, v8, v0

    aput-object v8, v6, v0

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_77

    .line 74
    :cond_98
    iget-object v8, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v9, p0, mShader:Ljava/lang/String;

    invoke-virtual {v8, v9, v6, v7}, Landroid/renderscript/RenderScript;->nProgramFragmentCreate(Ljava/lang/String;[Ljava/lang/String;[J)J

    move-result-wide v2

    .line 75
    .local v2, "id":J
    new-instance v5, Landroid/renderscript/ProgramFragmentFixedFunction;

    iget-object v8, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v5, v2, v3, v8}, Landroid/renderscript/ProgramFragmentFixedFunction;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 76
    .local v5, "pf":Landroid/renderscript/ProgramFragmentFixedFunction;
    invoke-virtual {p0, v5}, initProgram(Landroid/renderscript/Program;)V

    .line 77
    return-object v5
.end method
