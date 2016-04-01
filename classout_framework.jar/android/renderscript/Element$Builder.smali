.class public Landroid/renderscript/Element$Builder;
.super Ljava/lang/Object;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mArraySizes:[I

.field mCount:I

.field mElementNames:[Ljava/lang/String;

.field mElements:[Landroid/renderscript/Element;

.field mRS:Landroid/renderscript/RenderScript;

.field mSkipPadding:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .registers 4
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    const/16 v1, 0x8

    .line 1049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1050
    iput-object p1, p0, mRS:Landroid/renderscript/RenderScript;

    .line 1051
    const/4 v0, 0x0

    iput v0, p0, mCount:I

    .line 1052
    new-array v0, v1, [Landroid/renderscript/Element;

    iput-object v0, p0, mElements:[Landroid/renderscript/Element;

    .line 1053
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, mElementNames:[Ljava/lang/String;

    .line 1054
    new-array v0, v1, [I

    iput-object v0, p0, mArraySizes:[I

    .line 1055
    return-void
.end method


# virtual methods
.method public add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;
    .registers 4
    .param p1, "element"    # Landroid/renderscript/Element;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1108
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, add(Landroid/renderscript/Element;Ljava/lang/String;I)Landroid/renderscript/Element$Builder;

    move-result-object v0

    return-object v0
.end method

.method public add(Landroid/renderscript/Element;Ljava/lang/String;I)Landroid/renderscript/Element$Builder;
    .registers 11
    .param p1, "element"    # Landroid/renderscript/Element;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "arraySize"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1065
    if-ge p3, v6, :cond_c

    .line 1066
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "Array size cannot be less than 1."

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1070
    :cond_c
    iget v3, p0, mSkipPadding:I

    if-eqz v3, :cond_1b

    .line 1071
    const-string v3, "#padding_"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1072
    iput v5, p0, mSkipPadding:I

    .line 1098
    :goto_1a
    return-object p0

    .line 1077
    :cond_1b
    iget v3, p1, Landroid/renderscript/Element;->mVectorSize:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6f

    .line 1078
    iput v6, p0, mSkipPadding:I

    .line 1083
    :goto_22
    iget v3, p0, mCount:I

    iget-object v4, p0, mElements:[Landroid/renderscript/Element;

    array-length v4, v4

    if-ne v3, v4, :cond_56

    .line 1084
    iget v3, p0, mCount:I

    add-int/lit8 v3, v3, 0x8

    new-array v1, v3, [Landroid/renderscript/Element;

    .line 1085
    .local v1, "e":[Landroid/renderscript/Element;
    iget v3, p0, mCount:I

    add-int/lit8 v3, v3, 0x8

    new-array v2, v3, [Ljava/lang/String;

    .line 1086
    .local v2, "s":[Ljava/lang/String;
    iget v3, p0, mCount:I

    add-int/lit8 v3, v3, 0x8

    new-array v0, v3, [I

    .line 1087
    .local v0, "as":[I
    iget-object v3, p0, mElements:[Landroid/renderscript/Element;

    iget v4, p0, mCount:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1088
    iget-object v3, p0, mElementNames:[Ljava/lang/String;

    iget v4, p0, mCount:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1089
    iget-object v3, p0, mArraySizes:[I

    iget v4, p0, mCount:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1090
    iput-object v1, p0, mElements:[Landroid/renderscript/Element;

    .line 1091
    iput-object v2, p0, mElementNames:[Ljava/lang/String;

    .line 1092
    iput-object v0, p0, mArraySizes:[I

    .line 1094
    .end local v0    # "as":[I
    .end local v1    # "e":[Landroid/renderscript/Element;
    .end local v2    # "s":[Ljava/lang/String;
    :cond_56
    iget-object v3, p0, mElements:[Landroid/renderscript/Element;

    iget v4, p0, mCount:I

    aput-object p1, v3, v4

    .line 1095
    iget-object v3, p0, mElementNames:[Ljava/lang/String;

    iget v4, p0, mCount:I

    aput-object p2, v3, v4

    .line 1096
    iget-object v3, p0, mArraySizes:[I

    iget v4, p0, mCount:I

    aput p3, v3, v4

    .line 1097
    iget v3, p0, mCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, mCount:I

    goto :goto_1a

    .line 1080
    :cond_6f
    iput v5, p0, mSkipPadding:I

    goto :goto_22
.end method

.method public create()Landroid/renderscript/Element;
    .registers 13

    .prologue
    const/4 v9, 0x0

    .line 1118
    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 1119
    iget v1, p0, mCount:I

    new-array v5, v1, [Landroid/renderscript/Element;

    .line 1120
    .local v5, "ein":[Landroid/renderscript/Element;
    iget v1, p0, mCount:I

    new-array v6, v1, [Ljava/lang/String;

    .line 1121
    .local v6, "sin":[Ljava/lang/String;
    iget v1, p0, mCount:I

    new-array v7, v1, [I

    .line 1122
    .local v7, "asin":[I
    iget-object v1, p0, mElements:[Landroid/renderscript/Element;

    iget v4, p0, mCount:I

    invoke-static {v1, v9, v5, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1123
    iget-object v1, p0, mElementNames:[Ljava/lang/String;

    iget v4, p0, mCount:I

    invoke-static {v1, v9, v6, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1124
    iget-object v1, p0, mArraySizes:[I

    iget v4, p0, mCount:I

    invoke-static {v1, v9, v7, v9, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1126
    array-length v1, v5

    new-array v8, v1, [J

    .line 1127
    .local v8, "ids":[J
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_2b
    array-length v1, v5

    if-ge v0, v1, :cond_3b

    .line 1128
    aget-object v1, v5, v0

    iget-object v4, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v4}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v10

    aput-wide v10, v8, v0

    .line 1127
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 1130
    :cond_3b
    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v8, v6, v7}, Landroid/renderscript/RenderScript;->nElementCreate2([J[Ljava/lang/String;[I)J

    move-result-wide v2

    .line 1131
    .local v2, "id":J
    new-instance v1, Landroid/renderscript/Element;

    iget-object v4, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {v1 .. v7}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;[Landroid/renderscript/Element;[Ljava/lang/String;[I)V

    return-object v1
.end method
