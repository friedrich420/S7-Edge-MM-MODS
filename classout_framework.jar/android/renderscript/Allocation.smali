.class public Landroid/renderscript/Allocation;
.super Landroid/renderscript/BaseObj;
.source "Allocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Allocation$1;,
        Landroid/renderscript/Allocation$OnBufferAvailableListener;,
        Landroid/renderscript/Allocation$MipmapControl;
    }
.end annotation


# static fields
.field public static final USAGE_GRAPHICS_CONSTANTS:I = 0x8

.field public static final USAGE_GRAPHICS_RENDER_TARGET:I = 0x10

.field public static final USAGE_GRAPHICS_TEXTURE:I = 0x2

.field public static final USAGE_GRAPHICS_VERTEX:I = 0x4

.field public static final USAGE_IO_INPUT:I = 0x20

.field public static final USAGE_IO_OUTPUT:I = 0x40

.field public static final USAGE_SCRIPT:I = 0x1

.field public static final USAGE_SHARED:I = 0x80

.field static mAllocationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/renderscript/Allocation;",
            ">;"
        }
    .end annotation
.end field

.field static mBitmapOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field mAdaptedAllocation:Landroid/renderscript/Allocation;

.field mAutoPadding:Z

.field mBitmap:Landroid/graphics/Bitmap;

.field mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;

.field mCurrentCount:I

.field mCurrentDimX:I

.field mCurrentDimY:I

.field mCurrentDimZ:I

.field private mGetSurfaceSurface:Landroid/view/Surface;

.field mReadAllowed:Z

.field mSelectedArray:[I

.field mSelectedFace:Landroid/renderscript/Type$CubemapFace;

.field mSelectedLOD:I

.field mSelectedX:I

.field mSelectedY:I

.field mSelectedZ:I

.field mSize:I

.field mType:Landroid/renderscript/Type;

.field mUsage:I

.field mWriteAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, mAllocationMap:Ljava/util/HashMap;

    .line 1863
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 1865
    sget-object v0, mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 1866
    return-void
.end method

.method constructor <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V
    .registers 13
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;
    .param p4, "t"    # Landroid/renderscript/Type;
    .param p5, "usage"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 318
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 62
    iput-boolean v1, p0, mReadAllowed:Z

    .line 63
    iput-boolean v1, p0, mWriteAllowed:Z

    .line 64
    iput-boolean v2, p0, mAutoPadding:Z

    .line 70
    sget-object v1, Landroid/renderscript/Type$CubemapFace;->POSITIVE_X:Landroid/renderscript/Type$CubemapFace;

    iput-object v1, p0, mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    .line 80
    const/4 v1, 0x0

    iput-object v1, p0, mGetSurfaceSurface:Landroid/view/Surface;

    .line 319
    and-int/lit16 v1, p5, -0x100

    if-eqz v1, :cond_1e

    .line 327
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Unknown usage specified."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 330
    :cond_1e
    and-int/lit8 v1, p5, 0x20

    if-eqz v1, :cond_30

    .line 331
    iput-boolean v2, p0, mWriteAllowed:Z

    .line 333
    and-int/lit8 v1, p5, -0x24

    if-eqz v1, :cond_30

    .line 336
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Invalid usage combination."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 340
    :cond_30
    iput-object p4, p0, mType:Landroid/renderscript/Type;

    .line 341
    iput p5, p0, mUsage:I

    .line 343
    if-eqz p4, :cond_4c

    .line 347
    iget-object v1, p0, mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getCount()I

    move-result v1

    iget-object v2, p0, mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, p0, mSize:I

    .line 348
    invoke-direct {p0, p4}, updateCacheInfo(Landroid/renderscript/Type;)V

    .line 351
    :cond_4c
    :try_start_4c
    sget-object v1, Landroid/renderscript/RenderScript;->registerNativeAllocation:Ljava/lang/reflect/Method;

    sget-object v2, Landroid/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, mSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_5f} :catch_60

    .line 356
    return-void

    .line 352
    :catch_60
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RenderScript_jni"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t invoke registerNativeAllocation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t invoke registerNativeAllocation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .registers 26
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "array"    # Ljava/lang/Object;
    .param p4, "dt"    # Landroid/renderscript/Element$DataType;
    .param p5, "arrayLen"    # I

    .prologue
    .line 922
    const-wide/32 v2, 0x8000

    :try_start_3
    const-string v4, "copy1DRangeFromUnchecked"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 923
    move-object/from16 v0, p0

    iget-object v2, v0, mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    mul-int v6, v2, p2

    .line 925
    .local v6, "dataSize":I
    const/4 v7, 0x0

    .line 926
    .local v7, "usePadding":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, mAutoPadding:Z

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2b

    .line 927
    const/4 v7, 0x1

    .line 929
    :cond_2b
    move-object/from16 v0, p4

    iget v2, v0, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int v5, p5, v2

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-direct/range {v2 .. v7}, data1DChecks(IIIIZ)V

    .line 930
    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, getIDSafe()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget v13, v0, mSelectedLOD:I

    move-object/from16 v0, p0

    iget-object v2, v0, mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v0, v2, Landroid/renderscript/Element$DataType;->mSize:I

    move/from16 v18, v0

    move/from16 v12, p1

    move/from16 v14, p2

    move-object/from16 v15, p3

    move/from16 v16, v6

    move-object/from16 v17, p4

    move/from16 v19, v7

    invoke-virtual/range {v9 .. v19}, Landroid/renderscript/RenderScript;->nAllocationData1D(JIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_68

    .line 933
    const-wide/32 v2, 0x8000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 935
    return-void

    .line 933
    .end local v6    # "dataSize":I
    .end local v7    # "usePadding":Z
    :catchall_68
    move-exception v2

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .registers 26
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "array"    # Ljava/lang/Object;
    .param p4, "dt"    # Landroid/renderscript/Element$DataType;
    .param p5, "arrayLen"    # I

    .prologue
    .line 1555
    const-wide/32 v2, 0x8000

    :try_start_3
    const-string v4, "copy1DRangeToUnchecked"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1556
    move-object/from16 v0, p0

    iget-object v2, v0, mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v2}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v2

    mul-int v6, v2, p2

    .line 1558
    .local v6, "dataSize":I
    const/4 v7, 0x0

    .line 1559
    .local v7, "usePadding":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, mAutoPadding:Z

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2b

    .line 1560
    const/4 v7, 0x1

    .line 1562
    :cond_2b
    move-object/from16 v0, p4

    iget v2, v0, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int v5, p5, v2

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-direct/range {v2 .. v7}, data1DChecks(IIIIZ)V

    .line 1563
    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, getIDSafe()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget v13, v0, mSelectedLOD:I

    move-object/from16 v0, p0

    iget-object v2, v0, mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v0, v2, Landroid/renderscript/Element$DataType;->mSize:I

    move/from16 v18, v0

    move/from16 v12, p1

    move/from16 v14, p2

    move-object/from16 v15, p3

    move/from16 v16, v6

    move-object/from16 v17, p4

    move/from16 v19, v7

    invoke-virtual/range {v9 .. v19}, Landroid/renderscript/RenderScript;->nAllocationRead1D(JIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_68

    .line 1566
    const-wide/32 v2, 0x8000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1568
    return-void

    .line 1566
    .end local v6    # "dataSize":I
    .end local v7    # "usePadding":Z
    :catchall_68
    move-exception v2

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private copy3DRangeFromUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .registers 28
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "array"    # Ljava/lang/Object;
    .param p8, "dt"    # Landroid/renderscript/Element$DataType;
    .param p9, "arrayLen"    # I

    .prologue
    .line 1302
    const-wide/32 v4, 0x8000

    :try_start_3
    const-string v3, "copy3DRangeFromUnchecked"

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1303
    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    .line 1304
    invoke-direct/range {p0 .. p6}, validate3DRange(IIIIII)V

    .line 1305
    move-object/from16 v0, p0

    iget-object v3, v0, mType:Landroid/renderscript/Type;

    iget-object v3, v3, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    mul-int v3, v3, p4

    mul-int v3, v3, p5

    mul-int v2, v3, p6

    .line 1307
    .local v2, "dataSize":I
    const/16 v17, 0x0

    .line 1308
    .local v17, "usePadding":Z
    move-object/from16 v0, p8

    iget v3, v0, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int v14, p9, v3

    .line 1309
    .local v14, "sizeBytes":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, mAutoPadding:Z

    if-eqz v3, :cond_8a

    move-object/from16 v0, p0

    iget-object v3, v0, mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_8a

    .line 1310
    div-int/lit8 v3, v2, 0x4

    mul-int/lit8 v3, v3, 0x3

    if-le v3, v14, :cond_55

    .line 1311
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "Array too small for allocation type."

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4d

    .line 1324
    .end local v2    # "dataSize":I
    .end local v14    # "sizeBytes":I
    .end local v17    # "usePadding":Z
    :catchall_4d
    move-exception v3

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v3

    .line 1313
    .restart local v2    # "dataSize":I
    .restart local v14    # "sizeBytes":I
    .restart local v17    # "usePadding":Z
    :cond_55
    const/16 v17, 0x1

    .line 1314
    move v14, v2

    .line 1320
    :cond_58
    :try_start_58
    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, getIDSafe()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget v9, v0, mSelectedLOD:I

    move-object/from16 v0, p0

    iget-object v6, v0, mType:Landroid/renderscript/Type;

    iget-object v6, v6, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v6, v6, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v0, v6, Landroid/renderscript/Element$DataType;->mSize:I

    move/from16 v16, v0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v15, p8

    invoke-virtual/range {v3 .. v17}, Landroid/renderscript/RenderScript;->nAllocationData3D(JIIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_83
    .catchall {:try_start_58 .. :try_end_83} :catchall_4d

    .line 1324
    const-wide/32 v4, 0x8000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1326
    return-void

    .line 1316
    :cond_8a
    if-le v2, v14, :cond_58

    .line 1317
    :try_start_8c
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "Array too small for allocation type."

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_94
    .catchall {:try_start_8c .. :try_end_94} :catchall_4d
.end method

.method private copy3DRangeToUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .registers 28
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "array"    # Ljava/lang/Object;
    .param p8, "dt"    # Landroid/renderscript/Element$DataType;
    .param p9, "arrayLen"    # I

    .prologue
    .line 1819
    const-wide/32 v4, 0x8000

    :try_start_3
    const-string v3, "copy3DRangeToUnchecked"

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1820
    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    .line 1821
    invoke-direct/range {p0 .. p6}, validate3DRange(IIIIII)V

    .line 1822
    move-object/from16 v0, p0

    iget-object v3, v0, mType:Landroid/renderscript/Type;

    iget-object v3, v3, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    mul-int v3, v3, p4

    mul-int v3, v3, p5

    mul-int v2, v3, p6

    .line 1824
    .local v2, "dataSize":I
    const/16 v17, 0x0

    .line 1825
    .local v17, "usePadding":Z
    move-object/from16 v0, p8

    iget v3, v0, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int v14, p9, v3

    .line 1826
    .local v14, "sizeBytes":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, mAutoPadding:Z

    if-eqz v3, :cond_8a

    move-object/from16 v0, p0

    iget-object v3, v0, mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_8a

    .line 1827
    div-int/lit8 v3, v2, 0x4

    mul-int/lit8 v3, v3, 0x3

    if-le v3, v14, :cond_55

    .line 1828
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "Array too small for allocation type."

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4d

    .line 1840
    .end local v2    # "dataSize":I
    .end local v14    # "sizeBytes":I
    .end local v17    # "usePadding":Z
    :catchall_4d
    move-exception v3

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v3

    .line 1830
    .restart local v2    # "dataSize":I
    .restart local v14    # "sizeBytes":I
    .restart local v17    # "usePadding":Z
    :cond_55
    const/16 v17, 0x1

    .line 1831
    move v14, v2

    .line 1837
    :cond_58
    :try_start_58
    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, getIDSafe()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget v9, v0, mSelectedLOD:I

    move-object/from16 v0, p0

    iget-object v6, v0, mType:Landroid/renderscript/Type;

    iget-object v6, v6, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v6, v6, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v0, v6, Landroid/renderscript/Element$DataType;->mSize:I

    move/from16 v16, v0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v15, p8

    invoke-virtual/range {v3 .. v17}, Landroid/renderscript/RenderScript;->nAllocationRead3D(JIIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_83
    .catchall {:try_start_58 .. :try_end_83} :catchall_4d

    .line 1840
    const-wide/32 v4, 0x8000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1842
    return-void

    .line 1833
    :cond_8a
    if-le v2, v14, :cond_58

    .line 1834
    :try_start_8c
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "Array too small for allocation type."

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_94
    .catchall {:try_start_8c .. :try_end_94} :catchall_4d
.end method

.method private copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .registers 16
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "dt"    # Landroid/renderscript/Element$DataType;
    .param p3, "arrayLen"    # I

    .prologue
    const-wide/32 v10, 0x8000

    .line 616
    const-wide/32 v0, 0x8000

    :try_start_6
    const-string v2, "copyFromUnchecked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 617
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 618
    iget v0, p0, mCurrentDimZ:I

    if-lez v0, :cond_28

    .line 619
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, mCurrentDimX:I

    iget v5, p0, mCurrentDimY:I

    iget v6, p0, mCurrentDimZ:I

    move-object v0, p0

    move-object v7, p1

    move-object v8, p2

    move v9, p3

    invoke-direct/range {v0 .. v9}, copy3DRangeFromUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_3a

    .line 626
    :goto_24
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 628
    return-void

    .line 620
    :cond_28
    :try_start_28
    iget v0, p0, mCurrentDimY:I

    if-lez v0, :cond_3f

    .line 621
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, mCurrentDimX:I

    iget v4, p0, mCurrentDimY:I

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_39
    .catchall {:try_start_28 .. :try_end_39} :catchall_3a

    goto :goto_24

    .line 626
    :catchall_3a
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 623
    :cond_3f
    const/4 v1, 0x0

    :try_start_40
    iget v2, p0, mCurrentCount:I

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_49
    .catchall {:try_start_40 .. :try_end_49} :catchall_3a

    goto :goto_24
.end method

.method private copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .registers 14
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "dt"    # Landroid/renderscript/Element$DataType;
    .param p3, "arrayLen"    # I

    .prologue
    const-wide/32 v8, 0x8000

    .line 1396
    const-wide/32 v0, 0x8000

    :try_start_6
    const-string v2, "copyTo"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1397
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1398
    const/4 v7, 0x0

    .line 1399
    .local v7, "usePadding":Z
    iget-boolean v0, p0, mAutoPadding:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_23

    .line 1400
    const/4 v7, 0x1

    .line 1402
    :cond_23
    if-eqz v7, :cond_3d

    .line 1403
    iget v0, p2, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int/2addr v0, p3

    iget v1, p0, mSize:I

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_4c

    .line 1404
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Size of output array cannot be smaller than size of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_38
    .catchall {:try_start_6 .. :try_end_38} :catchall_38

    .line 1415
    .end local v7    # "usePadding":Z
    :catchall_38
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 1408
    .restart local v7    # "usePadding":Z
    :cond_3d
    :try_start_3d
    iget v0, p2, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int/2addr v0, p3

    iget v1, p0, mSize:I

    if-ge v0, v1, :cond_4c

    .line 1409
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Size of output array cannot be smaller than size of allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1413
    :cond_4c
    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget-object v0, p0, mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v6, v0, Landroid/renderscript/Element$DataType;->mSize:I

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->nAllocationRead(JLjava/lang/Object;Landroid/renderscript/Element$DataType;IZ)V
    :try_end_61
    .catchall {:try_start_3d .. :try_end_61} :catchall_38

    .line 1415
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1417
    return-void
.end method

.method public static createCubemapFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    .registers 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2174
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, createCubemapFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createCubemapFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .registers 16
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "mips"    # Landroid/renderscript/Allocation$MipmapControl;
    .param p3, "usage"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 2128
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2130
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 2131
    .local v7, "height":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 2133
    .local v11, "width":I
    rem-int/lit8 v5, v11, 0x6

    if-eqz v5, :cond_19

    .line 2134
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "Cubemap height must be multiple of 6"

    invoke-direct {v1, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2136
    :cond_19
    div-int/lit8 v5, v11, 0x6

    if-eq v5, v7, :cond_25

    .line 2137
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "Only square cube map faces supported"

    invoke-direct {v1, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2139
    :cond_25
    add-int/lit8 v5, v7, -0x1

    and-int/2addr v5, v7

    if-nez v5, :cond_35

    move v8, v1

    .line 2140
    .local v8, "isPow2":Z
    :goto_2b
    if-nez v8, :cond_37

    .line 2141
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "Only power of 2 cube faces supported"

    invoke-direct {v1, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v8    # "isPow2":Z
    :cond_35
    move v8, v4

    .line 2139
    goto :goto_2b

    .line 2144
    .restart local v8    # "isPow2":Z
    :cond_37
    invoke-static {p0, p1}, elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;

    move-result-object v0

    .line 2145
    .local v0, "e":Landroid/renderscript/Element;
    new-instance v10, Landroid/renderscript/Type$Builder;

    invoke-direct {v10, p0, v0}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 2146
    .local v10, "tb":Landroid/renderscript/Type$Builder;
    invoke-virtual {v10, v7}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 2147
    invoke-virtual {v10, v7}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 2148
    invoke-virtual {v10, v1}, Landroid/renderscript/Type$Builder;->setFaces(Z)Landroid/renderscript/Type$Builder;

    .line 2149
    sget-object v5, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    if-ne p2, v5, :cond_8a

    :goto_4d
    invoke-virtual {v10, v1}, Landroid/renderscript/Type$Builder;->setMipmaps(Z)Landroid/renderscript/Type$Builder;

    .line 2150
    invoke-virtual {v10}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v9

    .line 2152
    .local v9, "t":Landroid/renderscript/Type;
    invoke-virtual {v9, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget v4, p2, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    move-object v1, p0

    move-object v5, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nAllocationCubeCreateFromBitmap(JILandroid/graphics/Bitmap;I)J

    move-result-wide v2

    .line 2153
    .local v2, "id":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_8c

    .line 2154
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Load failed for bitmap "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " element "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v2    # "id":J
    .end local v9    # "t":Landroid/renderscript/Type;
    :cond_8a
    move v1, v4

    .line 2149
    goto :goto_4d

    .line 2156
    .restart local v2    # "id":J
    .restart local v9    # "t":Landroid/renderscript/Type;
    :cond_8c
    new-instance v1, Landroid/renderscript/Allocation;

    move-object v4, p0

    move-object v5, v9

    move v6, p3

    invoke-direct/range {v1 .. v6}, <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    return-object v1
.end method

.method public static createCubemapFromCubeFaces(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    .registers 16
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "xpos"    # Landroid/graphics/Bitmap;
    .param p2, "xneg"    # Landroid/graphics/Bitmap;
    .param p3, "ypos"    # Landroid/graphics/Bitmap;
    .param p4, "yneg"    # Landroid/graphics/Bitmap;
    .param p5, "zpos"    # Landroid/graphics/Bitmap;
    .param p6, "zneg"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2269
    sget-object v7, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v8, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v8}, createCubemapFromCubeFaces(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createCubemapFromCubeFaces(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .registers 20
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "xpos"    # Landroid/graphics/Bitmap;
    .param p2, "xneg"    # Landroid/graphics/Bitmap;
    .param p3, "ypos"    # Landroid/graphics/Bitmap;
    .param p4, "yneg"    # Landroid/graphics/Bitmap;
    .param p5, "zpos"    # Landroid/graphics/Bitmap;
    .param p6, "zneg"    # Landroid/graphics/Bitmap;
    .param p7, "mips"    # Landroid/renderscript/Allocation$MipmapControl;
    .param p8, "usage"    # I

    .prologue
    .line 2205
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 2206
    .local v5, "height":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ne v9, v5, :cond_46

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ne v9, v5, :cond_46

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-ne v9, v5, :cond_46

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ne v9, v5, :cond_46

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-ne v9, v5, :cond_46

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ne v9, v5, :cond_46

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-ne v9, v5, :cond_46

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ne v9, v5, :cond_46

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-ne v9, v5, :cond_46

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ne v9, v5, :cond_46

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-eq v9, v5, :cond_4e

    .line 2212
    :cond_46
    new-instance v9, Landroid/renderscript/RSIllegalArgumentException;

    const-string v10, "Only square cube map faces supported"

    invoke-direct {v9, v10}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2214
    :cond_4e
    add-int/lit8 v9, v5, -0x1

    and-int/2addr v9, v5

    if-nez v9, :cond_5e

    const/4 v6, 0x1

    .line 2215
    .local v6, "isPow2":Z
    :goto_54
    if-nez v6, :cond_60

    .line 2216
    new-instance v9, Landroid/renderscript/RSIllegalArgumentException;

    const-string v10, "Only power of 2 cube faces supported"

    invoke-direct {v9, v10}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2214
    .end local v6    # "isPow2":Z
    :cond_5e
    const/4 v6, 0x0

    goto :goto_54

    .line 2219
    .restart local v6    # "isPow2":Z
    :cond_60
    invoke-static {p0, p1}, elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;

    move-result-object v4

    .line 2220
    .local v4, "e":Landroid/renderscript/Element;
    new-instance v8, Landroid/renderscript/Type$Builder;

    invoke-direct {v8, p0, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 2221
    .local v8, "tb":Landroid/renderscript/Type$Builder;
    invoke-virtual {v8, v5}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 2222
    invoke-virtual {v8, v5}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 2223
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/renderscript/Type$Builder;->setFaces(Z)Landroid/renderscript/Type$Builder;

    .line 2224
    sget-object v9, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    move-object/from16 v0, p7

    if-ne v0, v9, :cond_c2

    const/4 v9, 0x1

    :goto_7a
    invoke-virtual {v8, v9}, Landroid/renderscript/Type$Builder;->setMipmaps(Z)Landroid/renderscript/Type$Builder;

    .line 2225
    invoke-virtual {v8}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v7

    .line 2226
    .local v7, "t":Landroid/renderscript/Type;
    move-object/from16 v0, p7

    move/from16 v1, p8

    invoke-static {p0, v7, v0, v1}, createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v3

    .line 2228
    .local v3, "cubemap":Landroid/renderscript/Allocation;
    invoke-static {p0, v3}, Landroid/renderscript/AllocationAdapter;->create2D(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/AllocationAdapter;

    move-result-object v2

    .line 2229
    .local v2, "adapter":Landroid/renderscript/AllocationAdapter;
    sget-object v9, Landroid/renderscript/Type$CubemapFace;->POSITIVE_X:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 2230
    invoke-virtual {v2, p1}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 2231
    sget-object v9, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_X:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 2232
    invoke-virtual {v2, p2}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 2233
    sget-object v9, Landroid/renderscript/Type$CubemapFace;->POSITIVE_Y:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 2234
    invoke-virtual {v2, p3}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 2235
    sget-object v9, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_Y:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 2236
    invoke-virtual {v2, p4}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 2237
    sget-object v9, Landroid/renderscript/Type$CubemapFace;->POSITIVE_Z:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 2238
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 2239
    sget-object v9, Landroid/renderscript/Type$CubemapFace;->NEGATIVE_Z:Landroid/renderscript/Type$CubemapFace;

    invoke-virtual {v2, v9}, Landroid/renderscript/AllocationAdapter;->setFace(Landroid/renderscript/Type$CubemapFace;)V

    .line 2240
    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/renderscript/AllocationAdapter;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 2242
    return-object v3

    .line 2224
    .end local v2    # "adapter":Landroid/renderscript/AllocationAdapter;
    .end local v3    # "cubemap":Landroid/renderscript/Allocation;
    .end local v7    # "t":Landroid/renderscript/Type;
    :cond_c2
    const/4 v9, 0x0

    goto :goto_7a
.end method

.method public static createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    .registers 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2102
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_17

    .line 2103
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/16 v1, 0x83

    invoke-static {p0, p1, v0, v1}, createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 2106
    :goto_16
    return-object v0

    :cond_17
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    goto :goto_16
.end method

.method public static createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .registers 19
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "mips"    # Landroid/renderscript/Allocation$MipmapControl;
    .param p3, "usage"    # I

    .prologue
    .line 2010
    const-wide/32 v6, 0x8000

    :try_start_3
    const-string v8, "createFromBitmap"

    invoke-static {v6, v7, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2011
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2014
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    if-nez v6, :cond_51

    .line 2015
    move/from16 v0, p3

    and-int/lit16 v6, v0, 0x80

    if-eqz v6, :cond_27

    .line 2016
    new-instance v6, Landroid/renderscript/RSIllegalArgumentException;

    const-string v7, "USAGE_SHARED cannot be used with a Bitmap that has a null config."

    invoke-direct {v6, v7}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1f

    .line 2048
    :catchall_1f
    move-exception v6

    const-wide/32 v8, 0x8000

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v6

    .line 2018
    :cond_27
    :try_start_27
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 2019
    .local v13, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2020
    .local v2, "c":Landroid/graphics/Canvas;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2021
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {p0, v13, v0, v1}, createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    :try_end_49
    .catchall {:try_start_27 .. :try_end_49} :catchall_1f

    move-result-object v3

    .line 2048
    const-wide/32 v6, 0x8000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .end local v2    # "c":Landroid/graphics/Canvas;
    .end local v13    # "newBitmap":Landroid/graphics/Bitmap;
    :goto_50
    return-object v3

    .line 2024
    :cond_51
    :try_start_51
    invoke-static/range {p0 .. p2}, typeFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Type;

    move-result-object v14

    .line 2027
    .local v14, "t":Landroid/renderscript/Type;
    sget-object v6, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    move-object/from16 v0, p2

    if-ne v0, v6, :cond_a3

    invoke-virtual {v14}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v6

    invoke-static {p0}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v6

    if-eqz v6, :cond_a3

    const/16 v6, 0x83

    move/from16 v0, p3

    if-ne v0, v6, :cond_a3

    .line 2030
    invoke-virtual {v14, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    move-object/from16 v0, p2

    iget v6, v0, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    move-object v3, p0

    move-object/from16 v7, p1

    move/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/renderscript/RenderScript;->nAllocationCreateBitmapBackedAllocation(JILandroid/graphics/Bitmap;I)J

    move-result-wide v4

    .line 2031
    .local v4, "id":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_8e

    .line 2032
    new-instance v6, Landroid/renderscript/RSRuntimeException;

    const-string v7, "Load failed."

    invoke-direct {v6, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2036
    :cond_8e
    new-instance v3, Landroid/renderscript/Allocation;

    move-object v6, p0

    move-object v7, v14

    move/from16 v8, p3

    invoke-direct/range {v3 .. v8}, <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    .line 2037
    .local v3, "alloc":Landroid/renderscript/Allocation;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_9c
    .catchall {:try_start_51 .. :try_end_9c} :catchall_1f

    .line 2048
    const-wide/32 v6, 0x8000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_50

    .line 2042
    .end local v3    # "alloc":Landroid/renderscript/Allocation;
    .end local v4    # "id":J
    :cond_a3
    :try_start_a3
    invoke-virtual {v14, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    move-object/from16 v0, p2

    iget v10, v0, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    move-object v7, p0

    move-object/from16 v11, p1

    move/from16 v12, p3

    invoke-virtual/range {v7 .. v12}, Landroid/renderscript/RenderScript;->nAllocationCreateFromBitmap(JILandroid/graphics/Bitmap;I)J

    move-result-wide v4

    .line 2043
    .restart local v4    # "id":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_c2

    .line 2044
    new-instance v6, Landroid/renderscript/RSRuntimeException;

    const-string v7, "Load failed."

    invoke-direct {v6, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2046
    :cond_c2
    new-instance v7, Landroid/renderscript/Allocation;

    move-wide v8, v4

    move-object v10, p0

    move-object v11, v14

    move/from16 v12, p3

    invoke-direct/range {v7 .. v12}, <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V
    :try_end_cc
    .catchall {:try_start_a3 .. :try_end_cc} :catchall_1f

    .line 2048
    const-wide/32 v8, 0x8000

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    move-object v3, v7

    goto/16 :goto_50
.end method

.method public static createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/Allocation;
    .registers 5
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I

    .prologue
    .line 2324
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_16

    .line 2325
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x3

    invoke-static {p0, p1, p2, v0, v1}, createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 2329
    :goto_15
    return-object v0

    :cond_16
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x2

    invoke-static {p0, p1, p2, v0, v1}, createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    goto :goto_15
.end method

.method public static createFromBitmapResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .registers 9
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .param p3, "mips"    # Landroid/renderscript/Allocation$MipmapControl;
    .param p4, "usage"    # I

    .prologue
    .line 2295
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2296
    and-int/lit16 v2, p4, 0xe0

    if-eqz v2, :cond_f

    .line 2297
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Unsupported usage specified."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2299
    :cond_f
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2300
    .local v1, "b":Landroid/graphics/Bitmap;
    invoke-static {p0, v1, p3, p4}, createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 2301
    .local v0, "alloc":Landroid/renderscript/Allocation;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2302
    return-object v0
.end method

.method public static createFromString(Landroid/renderscript/RenderScript;Ljava/lang/String;I)Landroid/renderscript/Allocation;
    .registers 8
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "usage"    # I

    .prologue
    .line 2346
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2347
    const/4 v1, 0x0

    .line 2349
    .local v1, "allocArray":[B
    :try_start_4
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 2350
    invoke-static {p0}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    array-length v4, v1

    invoke-static {p0, v3, v4, p2}, createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 2351
    .local v0, "alloc":Landroid/renderscript/Allocation;
    invoke-virtual {v0, v1}, copyFrom([B)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_16} :catch_17

    .line 2352
    return-object v0

    .line 2354
    .end local v0    # "alloc":Landroid/renderscript/Allocation;
    :catch_17
    move-exception v2

    .line 2355
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Could not convert string to utf-8."

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;
    .registers 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;
    .param p2, "count"    # I

    .prologue
    .line 1963
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;
    .registers 13
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "e"    # Landroid/renderscript/Element;
    .param p2, "count"    # I
    .param p3, "usage"    # I

    .prologue
    .line 1937
    const-wide/32 v4, 0x8000

    :try_start_3
    const-string v1, "createSized"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1938
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1939
    new-instance v0, Landroid/renderscript/Type$Builder;

    invoke-direct {v0, p0, p1}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 1940
    .local v0, "b":Landroid/renderscript/Type$Builder;
    invoke-virtual {v0, p2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 1941
    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v8

    .line 1943
    .local v8, "t":Landroid/renderscript/Type;
    invoke-virtual {v8, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    sget-object v1, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    iget v4, v1, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    const-wide/16 v6, 0x0

    move-object v1, p0

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->nAllocationCreateTyped(JIIJ)J

    move-result-wide v2

    .line 1944
    .local v2, "id":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_3d

    .line 1945
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Allocation creation failed."

    invoke-direct {v1, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_35

    .line 1949
    .end local v0    # "b":Landroid/renderscript/Type$Builder;
    .end local v2    # "id":J
    .end local v8    # "t":Landroid/renderscript/Type;
    :catchall_35
    move-exception v1

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v1

    .line 1947
    .restart local v0    # "b":Landroid/renderscript/Type$Builder;
    .restart local v2    # "id":J
    .restart local v8    # "t":Landroid/renderscript/Type;
    :cond_3d
    :try_start_3d
    new-instance v1, Landroid/renderscript/Allocation;

    move-object v4, p0

    move-object v5, v8

    move v6, p3

    invoke-direct/range {v1 .. v6}, <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_35

    .line 1949
    const-wide/32 v4, 0x8000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v1
.end method

.method public static createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;
    .registers 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "type"    # Landroid/renderscript/Type;

    .prologue
    .line 1920
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;
    .registers 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "type"    # Landroid/renderscript/Type;
    .param p2, "usage"    # I

    .prologue
    .line 1907
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {p0, p1, v0, p2}, createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    return-object v0
.end method

.method public static createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;
    .registers 16
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "type"    # Landroid/renderscript/Type;
    .param p2, "mips"    # Landroid/renderscript/Allocation$MipmapControl;
    .param p3, "usage"    # I

    .prologue
    const-wide/32 v10, 0x8000

    const-wide/16 v8, 0x0

    .line 1880
    const-wide/32 v0, 0x8000

    :try_start_8
    const-string v4, "createTyped"

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1881
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1882
    invoke-virtual {p1, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-nez v0, :cond_25

    .line 1883
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Bad Type"

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_20

    .line 1891
    :catchall_20
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 1885
    :cond_25
    :try_start_25
    invoke-virtual {p1, p0}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget v4, p2, Landroid/renderscript/Allocation$MipmapControl;->mID:I

    const-wide/16 v6, 0x0

    move-object v1, p0

    move v5, p3

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->nAllocationCreateTyped(JIIJ)J

    move-result-wide v2

    .line 1886
    .local v2, "id":J
    cmp-long v0, v2, v8

    if-nez v0, :cond_3f

    .line 1887
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Allocation creation failed."

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1889
    :cond_3f
    new-instance v1, Landroid/renderscript/Allocation;

    move-object v4, p0

    move-object v5, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V
    :try_end_47
    .catchall {:try_start_25 .. :try_end_47} :catchall_20

    .line 1891
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return-object v1
.end method

.method private data1DChecks(IIIIZ)V
    .registers 9
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "len"    # I
    .param p4, "dataSize"    # I
    .param p5, "usePadding"    # Z

    .prologue
    .line 883
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 884
    if-gez p1, :cond_f

    .line 885
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset must be >= 0."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 887
    :cond_f
    const/4 v0, 0x1

    if-ge p2, v0, :cond_1a

    .line 888
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Count must be >= 1."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 890
    :cond_1a
    add-int v0, p1, p2

    iget v1, p0, mCurrentCount:I

    if-le v0, v1, :cond_55

    .line 891
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overflow, Available count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mCurrentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 894
    :cond_55
    if-eqz p5, :cond_65

    .line 895
    div-int/lit8 v0, p4, 0x4

    mul-int/lit8 v0, v0, 0x3

    if-ge p3, v0, :cond_6f

    .line 896
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Array too small for allocation type."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 899
    :cond_65
    if-ge p3, p4, :cond_6f

    .line 900
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Array too small for allocation type."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 903
    :cond_6f
    return-void
.end method

.method static elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;
    .registers 6
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1967
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 1968
    .local v0, "bc":Landroid/graphics/Bitmap$Config;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_d

    .line 1969
    invoke-static {p0}, Landroid/renderscript/Element;->A_8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    .line 1978
    :goto_c
    return-object v1

    .line 1971
    :cond_d
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_16

    .line 1972
    invoke-static {p0}, Landroid/renderscript/Element;->RGBA_4444(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    goto :goto_c

    .line 1974
    :cond_16
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1f

    .line 1975
    invoke-static {p0}, Landroid/renderscript/Element;->RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    goto :goto_c

    .line 1977
    :cond_1f
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_28

    .line 1978
    invoke-static {p0}, Landroid/renderscript/Element;->RGB_565(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    goto :goto_c

    .line 1980
    :cond_28
    new-instance v1, Landroid/renderscript/RSInvalidStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad bitmap type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getIDSafe()J
    .registers 3

    .prologue
    .line 248
    iget-object v0, p0, mAdaptedAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_d

    .line 249
    iget-object v0, p0, mAdaptedAllocation:Landroid/renderscript/Allocation;

    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    .line 251
    :goto_c
    return-wide v0

    :cond_d
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    goto :goto_c
.end method

.method static sendBufferNotification(J)V
    .registers 6
    .param p0, "id"    # J

    .prologue
    .line 2383
    sget-object v2, mAllocationMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 2384
    :try_start_3
    sget-object v1, mAllocationMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p0, p1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Allocation;

    .line 2386
    .local v0, "a":Landroid/renderscript/Allocation;
    if-eqz v0, :cond_1b

    iget-object v1, v0, mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;

    if-eqz v1, :cond_1b

    .line 2387
    iget-object v1, v0, mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;

    invoke-interface {v1, v0}, Landroid/renderscript/Allocation$OnBufferAvailableListener;->onBufferAvailable(Landroid/renderscript/Allocation;)V

    .line 2389
    :cond_1b
    monitor-exit v2

    .line 2390
    return-void

    .line 2389
    .end local v0    # "a":Landroid/renderscript/Allocation;
    :catchall_1d
    move-exception v1

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 314
    iput-object p1, p0, mBitmap:Landroid/graphics/Bitmap;

    .line 315
    return-void
.end method

.method static typeFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;)Landroid/renderscript/Type;
    .registers 6
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "mip"    # Landroid/renderscript/Allocation$MipmapControl;

    .prologue
    .line 1985
    invoke-static {p0, p1}, elementFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Element;

    move-result-object v0

    .line 1986
    .local v0, "e":Landroid/renderscript/Element;
    new-instance v1, Landroid/renderscript/Type$Builder;

    invoke-direct {v1, p0, v0}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 1987
    .local v1, "tb":Landroid/renderscript/Type$Builder;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 1988
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 1989
    sget-object v2, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/renderscript/Allocation$MipmapControl;

    if-ne p2, v2, :cond_24

    const/4 v2, 0x1

    :goto_1c
    invoke-virtual {v1, v2}, Landroid/renderscript/Type$Builder;->setMipmaps(Z)Landroid/renderscript/Type$Builder;

    .line 1990
    invoke-virtual {v1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v2

    return-object v2

    .line 1989
    :cond_24
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method private updateCacheInfo(Landroid/renderscript/Type;)V
    .registers 5
    .param p1, "t"    # Landroid/renderscript/Type;

    .prologue
    const/4 v2, 0x1

    .line 301
    invoke-virtual {p1}, Landroid/renderscript/Type;->getX()I

    move-result v0

    iput v0, p0, mCurrentDimX:I

    .line 302
    invoke-virtual {p1}, Landroid/renderscript/Type;->getY()I

    move-result v0

    iput v0, p0, mCurrentDimY:I

    .line 303
    invoke-virtual {p1}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    iput v0, p0, mCurrentDimZ:I

    .line 304
    iget v0, p0, mCurrentDimX:I

    iput v0, p0, mCurrentCount:I

    .line 305
    iget v0, p0, mCurrentDimY:I

    if-le v0, v2, :cond_22

    .line 306
    iget v0, p0, mCurrentCount:I

    iget v1, p0, mCurrentDimY:I

    mul-int/2addr v0, v1

    iput v0, p0, mCurrentCount:I

    .line 308
    :cond_22
    iget v0, p0, mCurrentDimZ:I

    if-le v0, v2, :cond_2d

    .line 309
    iget v0, p0, mCurrentCount:I

    iget v1, p0, mCurrentDimZ:I

    mul-int/2addr v0, v1

    iput v0, p0, mCurrentCount:I

    .line 311
    :cond_2d
    return-void
.end method

.method private validate2DRange(IIII)V
    .registers 7
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 1090
    iget-object v0, p0, mAdaptedAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_5

    .line 1104
    :cond_4
    return-void

    .line 1094
    :cond_5
    if-ltz p1, :cond_9

    if-gez p2, :cond_11

    .line 1095
    :cond_9
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset cannot be negative."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1097
    :cond_11
    if-ltz p4, :cond_15

    if-gez p3, :cond_1d

    .line 1098
    :cond_15
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Height or width cannot be negative."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1100
    :cond_1d
    add-int v0, p1, p3

    iget v1, p0, mCurrentDimX:I

    if-gt v0, v1, :cond_29

    add-int v0, p2, p4

    iget v1, p0, mCurrentDimY:I

    if-le v0, v1, :cond_4

    .line 1101
    :cond_29
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Updated region larger than allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validate3DRange(IIIIII)V
    .registers 9
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I

    .prologue
    .line 1276
    iget-object v0, p0, mAdaptedAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_5

    .line 1290
    :cond_4
    return-void

    .line 1280
    :cond_5
    if-ltz p1, :cond_b

    if-ltz p2, :cond_b

    if-gez p3, :cond_13

    .line 1281
    :cond_b
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Offset cannot be negative."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1283
    :cond_13
    if-ltz p5, :cond_19

    if-ltz p4, :cond_19

    if-gez p6, :cond_21

    .line 1284
    :cond_19
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Height or width cannot be negative."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1286
    :cond_21
    add-int v0, p1, p4

    iget v1, p0, mCurrentDimX:I

    if-gt v0, v1, :cond_33

    add-int v0, p2, p5

    iget v1, p0, mCurrentDimY:I

    if-gt v0, v1, :cond_33

    add-int v0, p3, p6

    iget v1, p0, mCurrentDimZ:I

    if-le v0, v1, :cond_4

    .line 1287
    :cond_33
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Updated region larger than allocation."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateBitmapFormat(Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x2

    .line 560
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 561
    .local v0, "bc":Landroid/graphics/Bitmap$Config;
    if-nez v0, :cond_f

    .line 562
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Bitmap has an unsupported format for this operation"

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 564
    :cond_f
    sget-object v1, Landroid/renderscript/Allocation$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1b4

    .line 606
    :cond_1a
    return-void

    .line 566
    :pswitch_1b
    iget-object v1, p0, mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    if-eq v1, v2, :cond_1a

    .line 567
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocation kind is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, passed bitmap was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 575
    :pswitch_78
    iget-object v1, p0, mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    if-ne v1, v2, :cond_91

    iget-object v1, p0, mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1a

    .line 577
    :cond_91
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocation kind is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, passed bitmap was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 585
    :pswitch_e2
    iget-object v1, p0, mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    if-ne v1, v2, :cond_fa

    iget-object v1, p0, mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    if-eq v1, v3, :cond_1a

    .line 587
    :cond_fa
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocation kind is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, passed bitmap was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 595
    :pswitch_14b
    iget-object v1, p0, mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    iget-object v1, v1, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    sget-object v2, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    if-ne v1, v2, :cond_163

    iget-object v1, p0, mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    if-eq v1, v3, :cond_1a

    .line 597
    :cond_163
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Allocation kind is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    iget-object v3, v3, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, passed bitmap was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 564
    :pswitch_data_1b4
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_78
        :pswitch_e2
        :pswitch_14b
    .end packed-switch
.end method

.method private validateBitmapSize(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 609
    iget v0, p0, mCurrentDimX:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_10

    iget v0, p0, mCurrentDimY:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_18

    .line 610
    :cond_10
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Cannot update allocation from bitmap, sizes mismatch"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_18
    return-void
.end method

.method private validateIsFloat32()V
    .registers 4

    .prologue
    .line 400
    iget-object v0, p0, mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_b

    .line 401
    return-void

    .line 403
    :cond_b
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "32 bit float source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsFloat64()V
    .registers 4

    .prologue
    .line 408
    iget-object v0, p0, mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_b

    .line 409
    return-void

    .line 411
    :cond_b
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "64 bit float source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsInt16()V
    .registers 4

    .prologue
    .line 382
    iget-object v0, p0, mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_15

    .line 384
    :cond_14
    return-void

    .line 386
    :cond_15
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "16 bit integer source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsInt32()V
    .registers 4

    .prologue
    .line 373
    iget-object v0, p0, mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_15

    .line 375
    :cond_14
    return-void

    .line 377
    :cond_15
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "32 bit integer source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsInt64()V
    .registers 4

    .prologue
    .line 364
    iget-object v0, p0, mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_15

    .line 366
    :cond_14
    return-void

    .line 368
    :cond_15
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "64 bit integer source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsInt8()V
    .registers 4

    .prologue
    .line 391
    iget-object v0, p0, mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_15

    .line 393
    :cond_14
    return-void

    .line 395
    :cond_15
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "8 bit integer source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateIsObject()V
    .registers 4

    .prologue
    .line 416
    iget-object v0, p0, mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_ELEMENT:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_64

    iget-object v0, p0, mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_TYPE:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_64

    iget-object v0, p0, mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_64

    iget-object v0, p0, mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_SAMPLER:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_64

    iget-object v0, p0, mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_SCRIPT:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_64

    iget-object v0, p0, mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_MESH:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_64

    iget-object v0, p0, mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_64

    iget-object v0, p0, mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_64

    iget-object v0, p0, mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

    if-eq v0, v1, :cond_64

    iget-object v0, p0, mType:Landroid/renderscript/Type;

    iget-object v0, v0, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v0, v0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataType;->RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

    if-ne v0, v1, :cond_65

    .line 426
    :cond_64
    return-void

    .line 428
    :cond_65
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object source does not match allocation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;
    .registers 7
    .param p1, "d"    # Ljava/lang/Object;
    .param p2, "checkType"    # Z

    .prologue
    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 84
    .local v0, "c":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_12

    .line 85
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Object passed is not an array of primitives."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_12
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 88
    .local v1, "cmp":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_24

    .line 89
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Object passed is not an Array of primitives."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_24
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_37

    .line 93
    if-eqz p2, :cond_34

    .line 94
    invoke-direct {p0}, validateIsInt64()V

    .line 95
    iget-object v2, p0, mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 137
    :goto_33
    return-object v2

    .line 97
    :cond_34
    sget-object v2, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    goto :goto_33

    .line 100
    :cond_37
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_4a

    .line 101
    if-eqz p2, :cond_47

    .line 102
    invoke-direct {p0}, validateIsInt32()V

    .line 103
    iget-object v2, p0, mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    goto :goto_33

    .line 105
    :cond_47
    sget-object v2, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    goto :goto_33

    .line 108
    :cond_4a
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_5d

    .line 109
    if-eqz p2, :cond_5a

    .line 110
    invoke-direct {p0}, validateIsInt16()V

    .line 111
    iget-object v2, p0, mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    goto :goto_33

    .line 113
    :cond_5a
    sget-object v2, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    goto :goto_33

    .line 116
    :cond_5d
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_70

    .line 117
    if-eqz p2, :cond_6d

    .line 118
    invoke-direct {p0}, validateIsInt8()V

    .line 119
    iget-object v2, p0, mType:Landroid/renderscript/Type;

    iget-object v2, v2, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v2, v2, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    goto :goto_33

    .line 121
    :cond_6d
    sget-object v2, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    goto :goto_33

    .line 124
    :cond_70
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_7c

    .line 125
    if-eqz p2, :cond_79

    .line 126
    invoke-direct {p0}, validateIsFloat32()V

    .line 128
    :cond_79
    sget-object v2, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    goto :goto_33

    .line 131
    :cond_7c
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_88

    .line 132
    if-eqz p2, :cond_85

    .line 133
    invoke-direct {p0}, validateIsFloat64()V

    .line 135
    :cond_85
    sget-object v2, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    goto :goto_33

    .line 137
    :cond_88
    const/4 v2, 0x0

    goto :goto_33
.end method


# virtual methods
.method public copy1DRangeFrom(IILandroid/renderscript/Allocation;I)V
    .registers 23
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "data"    # Landroid/renderscript/Allocation;
    .param p4, "dataOff"    # I

    .prologue
    .line 1081
    const-wide/32 v2, 0x8000

    const-string v4, "copy1DRangeFrom"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, getIDSafe()J

    move-result-wide v4

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, mSelectedLOD:I

    move-object/from16 v0, p0

    iget-object v2, v0, mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v9, v2, Landroid/renderscript/Type$CubemapFace;->mID:I

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v12

    const/4 v15, 0x0

    move-object/from16 v0, p3

    iget v0, v0, mSelectedLOD:I

    move/from16 v16, v0

    move-object/from16 v0, p3

    iget-object v2, v0, mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v0, v2, Landroid/renderscript/Type$CubemapFace;->mID:I

    move/from16 v17, v0

    move/from16 v6, p1

    move/from16 v10, p2

    move/from16 v14, p4

    invoke-virtual/range {v3 .. v17}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIIIIJIIII)V

    .line 1086
    const-wide/32 v2, 0x8000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1087
    return-void
.end method

.method public copy1DRangeFrom(IILjava/lang/Object;)V
    .registers 10
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "array"    # Ljava/lang/Object;

    .prologue
    .line 1010
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1013
    return-void
.end method

.method public copy1DRangeFrom(II[B)V
    .registers 10
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [B

    .prologue
    .line 1053
    invoke-direct {p0}, validateIsInt8()V

    .line 1054
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1055
    return-void
.end method

.method public copy1DRangeFrom(II[F)V
    .registers 10
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [F

    .prologue
    .line 1067
    invoke-direct {p0}, validateIsFloat32()V

    .line 1068
    sget-object v4, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1069
    return-void
.end method

.method public copy1DRangeFrom(II[I)V
    .registers 10
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [I

    .prologue
    .line 1025
    invoke-direct {p0}, validateIsInt32()V

    .line 1026
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1027
    return-void
.end method

.method public copy1DRangeFrom(II[S)V
    .registers 10
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [S

    .prologue
    .line 1039
    invoke-direct {p0}, validateIsInt16()V

    .line 1040
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1041
    return-void
.end method

.method public copy1DRangeFromUnchecked(IILjava/lang/Object;)V
    .registers 10
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "array"    # Ljava/lang/Object;

    .prologue
    .line 946
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 949
    return-void
.end method

.method public copy1DRangeFromUnchecked(II[B)V
    .registers 10
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [B

    .prologue
    .line 984
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 985
    return-void
.end method

.method public copy1DRangeFromUnchecked(II[F)V
    .registers 10
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [F

    .prologue
    .line 996
    sget-object v4, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 997
    return-void
.end method

.method public copy1DRangeFromUnchecked(II[I)V
    .registers 10
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [I

    .prologue
    .line 960
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 961
    return-void
.end method

.method public copy1DRangeFromUnchecked(II[S)V
    .registers 10
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [S

    .prologue
    .line 972
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, copy1DRangeFromUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 973
    return-void
.end method

.method public copy1DRangeTo(IILjava/lang/Object;)V
    .registers 10
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "array"    # Ljava/lang/Object;

    .prologue
    .line 1643
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1646
    return-void
.end method

.method public copy1DRangeTo(II[B)V
    .registers 10
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [B

    .prologue
    .line 1686
    invoke-direct {p0}, validateIsInt8()V

    .line 1687
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1688
    return-void
.end method

.method public copy1DRangeTo(II[F)V
    .registers 10
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [F

    .prologue
    .line 1700
    invoke-direct {p0}, validateIsFloat32()V

    .line 1701
    sget-object v4, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1702
    return-void
.end method

.method public copy1DRangeTo(II[I)V
    .registers 10
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [I

    .prologue
    .line 1658
    invoke-direct {p0}, validateIsInt32()V

    .line 1659
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1660
    return-void
.end method

.method public copy1DRangeTo(II[S)V
    .registers 10
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [S

    .prologue
    .line 1672
    invoke-direct {p0}, validateIsInt16()V

    .line 1673
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1674
    return-void
.end method

.method public copy1DRangeToUnchecked(IILjava/lang/Object;)V
    .registers 10
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "array"    # Ljava/lang/Object;

    .prologue
    .line 1579
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1582
    return-void
.end method

.method public copy1DRangeToUnchecked(II[B)V
    .registers 10
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [B

    .prologue
    .line 1617
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1618
    return-void
.end method

.method public copy1DRangeToUnchecked(II[F)V
    .registers 10
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [F

    .prologue
    .line 1629
    sget-object v4, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1630
    return-void
.end method

.method public copy1DRangeToUnchecked(II[I)V
    .registers 10
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [I

    .prologue
    .line 1593
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1594
    return-void
.end method

.method public copy1DRangeToUnchecked(II[S)V
    .registers 10
    .param p1, "off"    # I
    .param p2, "count"    # I
    .param p3, "d"    # [S

    .prologue
    .line 1605
    sget-object v4, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v5, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, copy1DRangeToUnchecked(IILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1606
    return-void
.end method

.method public copy2DRangeFrom(IIIILandroid/renderscript/Allocation;II)V
    .registers 26
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # Landroid/renderscript/Allocation;
    .param p6, "dataXoff"    # I
    .param p7, "dataYoff"    # I

    .prologue
    .line 1235
    const-wide/32 v2, 0x8000

    :try_start_3
    const-string v4, "copy2DRangeFrom"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1236
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 1237
    invoke-direct/range {p0 .. p4}, validate2DRange(IIII)V

    .line 1238
    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, getIDSafe()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget v8, v0, mSelectedLOD:I

    move-object/from16 v0, p0

    iget-object v2, v0, mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v9, v2, Landroid/renderscript/Type$CubemapFace;->mID:I

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v12

    move-object/from16 v0, p5

    iget v0, v0, mSelectedLOD:I

    move/from16 v16, v0

    move-object/from16 v0, p5

    iget-object v2, v0, mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v0, v2, Landroid/renderscript/Type$CubemapFace;->mID:I

    move/from16 v17, v0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v14, p6

    move/from16 v15, p7

    invoke-virtual/range {v3 .. v17}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIIIIJIIII)V
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_52

    .line 1243
    const-wide/32 v2, 0x8000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1245
    return-void

    .line 1243
    :catchall_52
    move-exception v2

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public copy2DRangeFrom(IIIILjava/lang/Object;)V
    .registers 16
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "array"    # Ljava/lang/Object;

    .prologue
    const-wide/32 v8, 0x8000

    .line 1147
    const-wide/32 v0, 0x8000

    :try_start_6
    const-string v2, "copy2DRangeFrom"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1148
    const/4 v0, 0x1

    invoke-direct {p0, p5, v0}, validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v6

    invoke-static {p5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_21

    .line 1152
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1154
    return-void

    .line 1152
    :catchall_21
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public copy2DRangeFrom(IIII[B)V
    .registers 14
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [B

    .prologue
    .line 1167
    invoke-direct {p0}, validateIsInt8()V

    .line 1168
    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1170
    return-void
.end method

.method public copy2DRangeFrom(IIII[F)V
    .registers 14
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [F

    .prologue
    .line 1215
    invoke-direct {p0}, validateIsFloat32()V

    .line 1216
    sget-object v6, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1218
    return-void
.end method

.method public copy2DRangeFrom(IIII[I)V
    .registers 14
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [I

    .prologue
    .line 1199
    invoke-direct {p0}, validateIsInt32()V

    .line 1200
    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1202
    return-void
.end method

.method public copy2DRangeFrom(IIII[S)V
    .registers 14
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [S

    .prologue
    .line 1183
    invoke-direct {p0}, validateIsInt16()V

    .line 1184
    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1186
    return-void
.end method

.method public copy2DRangeFrom(IILandroid/graphics/Bitmap;)V
    .registers 16
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "data"    # Landroid/graphics/Bitmap;

    .prologue
    const-wide/32 v10, 0x8000

    .line 1258
    const-wide/32 v2, 0x8000

    :try_start_6
    const-string v1, "copy2DRangeFrom"

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1259
    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 1260
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-nez v1, :cond_36

    .line 1261
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1262
    .local v9, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1263
    .local v0, "c":Landroid/graphics/Canvas;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p3, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1264
    invoke-virtual {p0, p1, p2, v9}, copy2DRangeFrom(IILandroid/graphics/Bitmap;)V
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_5a

    .line 1271
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 1273
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v9    # "newBitmap":Landroid/graphics/Bitmap;
    :goto_35
    return-void

    .line 1267
    :cond_36
    :try_start_36
    invoke-direct {p0, p3}, validateBitmapFormat(Landroid/graphics/Bitmap;)V

    .line 1268
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p0, p1, p2, v1, v2}, validate2DRange(IIII)V

    .line 1269
    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, getIDSafe()J

    move-result-wide v2

    iget v6, p0, mSelectedLOD:I

    iget-object v4, p0, mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v7, v4, Landroid/renderscript/Type$CubemapFace;->mID:I

    move v4, p1

    move v5, p2

    move-object v8, p3

    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIILandroid/graphics/Bitmap;)V
    :try_end_56
    .catchall {:try_start_36 .. :try_end_56} :catchall_5a

    .line 1271
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_35

    :catchall_5a
    move-exception v1

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw v1
.end method

.method copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .registers 25
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "array"    # Ljava/lang/Object;
    .param p6, "dt"    # Landroid/renderscript/Element$DataType;
    .param p7, "arrayLen"    # I

    .prologue
    .line 1109
    const-wide/32 v4, 0x8000

    :try_start_3
    const-string v3, "copy2DRangeFromUnchecked"

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1110
    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    .line 1111
    invoke-direct/range {p0 .. p4}, validate2DRange(IIII)V

    .line 1112
    move-object/from16 v0, p0

    iget-object v3, v0, mType:Landroid/renderscript/Type;

    iget-object v3, v3, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    mul-int v3, v3, p3

    mul-int v2, v3, p4

    .line 1114
    .local v2, "dataSize":I
    const/16 v16, 0x0

    .line 1115
    .local v16, "usePadding":Z
    move-object/from16 v0, p6

    iget v3, v0, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int v13, p7, v3

    .line 1116
    .local v13, "sizeBytes":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, mAutoPadding:Z

    if-eqz v3, :cond_88

    move-object/from16 v0, p0

    iget-object v3, v0, mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_88

    .line 1117
    div-int/lit8 v3, v2, 0x4

    mul-int/lit8 v3, v3, 0x3

    if-le v3, v13, :cond_53

    .line 1118
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "Array too small for allocation type."

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_4b

    .line 1131
    .end local v2    # "dataSize":I
    .end local v13    # "sizeBytes":I
    .end local v16    # "usePadding":Z
    :catchall_4b
    move-exception v3

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v3

    .line 1120
    .restart local v2    # "dataSize":I
    .restart local v13    # "sizeBytes":I
    .restart local v16    # "usePadding":Z
    :cond_53
    const/16 v16, 0x1

    .line 1121
    move v13, v2

    .line 1127
    :cond_56
    :try_start_56
    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, getIDSafe()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget v8, v0, mSelectedLOD:I

    move-object/from16 v0, p0

    iget-object v6, v0, mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v9, v6, Landroid/renderscript/Type$CubemapFace;->mID:I

    move-object/from16 v0, p0

    iget-object v6, v0, mType:Landroid/renderscript/Type;

    iget-object v6, v6, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v6, v6, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v15, v6, Landroid/renderscript/Element$DataType;->mSize:I

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v14, p6

    invoke-virtual/range {v3 .. v16}, Landroid/renderscript/RenderScript;->nAllocationData2D(JIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_81
    .catchall {:try_start_56 .. :try_end_81} :catchall_4b

    .line 1131
    const-wide/32 v4, 0x8000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1133
    return-void

    .line 1123
    :cond_88
    if-le v2, v13, :cond_56

    .line 1124
    :try_start_8a
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "Array too small for allocation type."

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_92
    .catchall {:try_start_8a .. :try_end_92} :catchall_4b
.end method

.method public copy2DRangeTo(IIIILjava/lang/Object;)V
    .registers 14
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "array"    # Ljava/lang/Object;

    .prologue
    .line 1743
    const/4 v0, 0x1

    invoke-direct {p0, p5, v0}, validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v6

    invoke-static {p5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1746
    return-void
.end method

.method public copy2DRangeTo(IIII[B)V
    .registers 14
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [B

    .prologue
    .line 1758
    invoke-direct {p0}, validateIsInt8()V

    .line 1759
    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1761
    return-void
.end method

.method public copy2DRangeTo(IIII[F)V
    .registers 14
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [F

    .prologue
    .line 1803
    invoke-direct {p0}, validateIsFloat32()V

    .line 1804
    sget-object v6, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1806
    return-void
.end method

.method public copy2DRangeTo(IIII[I)V
    .registers 14
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [I

    .prologue
    .line 1788
    invoke-direct {p0}, validateIsInt32()V

    .line 1789
    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1791
    return-void
.end method

.method public copy2DRangeTo(IIII[S)V
    .registers 14
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "data"    # [S

    .prologue
    .line 1773
    invoke-direct {p0}, validateIsInt16()V

    .line 1774
    sget-object v6, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v7, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1776
    return-void
.end method

.method copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    .registers 25
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "array"    # Ljava/lang/Object;
    .param p6, "dt"    # Landroid/renderscript/Element$DataType;
    .param p7, "arrayLen"    # I

    .prologue
    .line 1708
    const-wide/32 v4, 0x8000

    :try_start_3
    const-string v3, "copy2DRangeToUnchecked"

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1709
    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    .line 1710
    invoke-direct/range {p0 .. p4}, validate2DRange(IIII)V

    .line 1711
    move-object/from16 v0, p0

    iget-object v3, v0, mType:Landroid/renderscript/Type;

    iget-object v3, v3, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v3}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    mul-int v3, v3, p3

    mul-int v2, v3, p4

    .line 1713
    .local v2, "dataSize":I
    const/16 v16, 0x0

    .line 1714
    .local v16, "usePadding":Z
    move-object/from16 v0, p6

    iget v3, v0, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int v13, p7, v3

    .line 1715
    .local v13, "sizeBytes":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, mAutoPadding:Z

    if-eqz v3, :cond_88

    move-object/from16 v0, p0

    iget-object v3, v0, mType:Landroid/renderscript/Type;

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getVectorSize()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_88

    .line 1716
    div-int/lit8 v3, v2, 0x4

    mul-int/lit8 v3, v3, 0x3

    if-le v3, v13, :cond_53

    .line 1717
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "Array too small for allocation type."

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_4b

    .line 1729
    .end local v2    # "dataSize":I
    .end local v13    # "sizeBytes":I
    .end local v16    # "usePadding":Z
    :catchall_4b
    move-exception v3

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v3

    .line 1719
    .restart local v2    # "dataSize":I
    .restart local v13    # "sizeBytes":I
    .restart local v16    # "usePadding":Z
    :cond_53
    const/16 v16, 0x1

    .line 1720
    move v13, v2

    .line 1726
    :cond_56
    :try_start_56
    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, getIDSafe()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget v8, v0, mSelectedLOD:I

    move-object/from16 v0, p0

    iget-object v6, v0, mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    iget v9, v6, Landroid/renderscript/Type$CubemapFace;->mID:I

    move-object/from16 v0, p0

    iget-object v6, v0, mType:Landroid/renderscript/Type;

    iget-object v6, v6, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v6, v6, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v15, v6, Landroid/renderscript/Element$DataType;->mSize:I

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v14, p6

    invoke-virtual/range {v3 .. v16}, Landroid/renderscript/RenderScript;->nAllocationRead2D(JIIIIIILjava/lang/Object;ILandroid/renderscript/Element$DataType;IZ)V
    :try_end_81
    .catchall {:try_start_56 .. :try_end_81} :catchall_4b

    .line 1729
    const-wide/32 v4, 0x8000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1731
    return-void

    .line 1722
    :cond_88
    if-le v2, v13, :cond_56

    .line 1723
    :try_start_8a
    new-instance v3, Landroid/renderscript/RSIllegalArgumentException;

    const-string v4, "Array too small for allocation type."

    invoke-direct {v3, v4}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_92
    .catchall {:try_start_8a .. :try_end_92} :catchall_4b
.end method

.method public copy3DRangeFrom(IIIIIILandroid/renderscript/Allocation;III)V
    .registers 28
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "data"    # Landroid/renderscript/Allocation;
    .param p8, "dataXoff"    # I
    .param p9, "dataYoff"    # I
    .param p10, "dataZoff"    # I

    .prologue
    .line 1368
    move-object/from16 v0, p0

    iget-object v1, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 1369
    invoke-direct/range {p0 .. p6}, validate3DRange(IIIIII)V

    .line 1370
    move-object/from16 v0, p0

    iget-object v1, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-direct/range {p0 .. p0}, getIDSafe()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget v7, v0, mSelectedLOD:I

    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v11

    move-object/from16 v0, p7

    iget v0, v0, mSelectedLOD:I

    move/from16 v16, v0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    invoke-virtual/range {v1 .. v16}, Landroid/renderscript/RenderScript;->nAllocationData3D(JIIIIIIIJIIII)V

    .line 1373
    return-void
.end method

.method public copy3DRangeFrom(IIIIIILjava/lang/Object;)V
    .registers 20
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "array"    # Ljava/lang/Object;

    .prologue
    .line 1342
    const-wide/32 v2, 0x8000

    :try_start_3
    const-string v4, "copy3DRangeFrom"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1343
    const/4 v2, 0x1

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v2}, validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v10

    invoke-static/range {p7 .. p7}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v11

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v11}, copy3DRangeFromUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_29

    .line 1347
    const-wide/32 v2, 0x8000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1349
    return-void

    .line 1347
    :catchall_29
    move-exception v2

    const-wide/32 v4, 0x8000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public copy3DRangeTo(IIIIIILjava/lang/Object;)V
    .registers 19
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "d"    # I
    .param p7, "array"    # Ljava/lang/Object;

    .prologue
    .line 1856
    const/4 v1, 0x1

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v9

    invoke-static/range {p7 .. p7}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v10}, copy3DRangeToUnchecked(IIIIIILjava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1859
    return-void
.end method

.method public copyFrom(Landroid/graphics/Bitmap;)V
    .registers 10
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const-wide/32 v6, 0x8000

    .line 773
    const-wide/32 v2, 0x8000

    :try_start_6
    const-string v4, "copyFrom"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 774
    iget-object v2, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 775
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    if-nez v2, :cond_36

    .line 776
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 777
    .local v1, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 778
    .local v0, "c":Landroid/graphics/Canvas;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 779
    invoke-virtual {p0, v1}, copyFrom(Landroid/graphics/Bitmap;)V
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_4b

    .line 786
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 788
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "newBitmap":Landroid/graphics/Bitmap;
    :goto_35
    return-void

    .line 782
    :cond_36
    :try_start_36
    invoke-direct {p0, p1}, validateBitmapSize(Landroid/graphics/Bitmap;)V

    .line 783
    invoke-direct {p0, p1}, validateBitmapFormat(Landroid/graphics/Bitmap;)V

    .line 784
    iget-object v2, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, p1}, Landroid/renderscript/RenderScript;->nAllocationCopyFromBitmap(JLandroid/graphics/Bitmap;)V
    :try_end_47
    .catchall {:try_start_36 .. :try_end_47} :catchall_4b

    .line 786
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_35

    :catchall_4b
    move-exception v2

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public copyFrom(Landroid/renderscript/Allocation;)V
    .registers 12
    .param p1, "a"    # Landroid/renderscript/Allocation;

    .prologue
    const-wide/32 v8, 0x8000

    .line 798
    const-wide/32 v0, 0x8000

    :try_start_6
    const-string v2, "copyFrom"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 799
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 800
    iget-object v0, p0, mType:Landroid/renderscript/Type;

    invoke-virtual {p1}, getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 801
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Types of allocations must match."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_24

    .line 805
    :catchall_24
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 803
    :cond_29
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_2b
    iget v3, p0, mCurrentDimX:I

    iget v4, p0, mCurrentDimY:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v7}, copy2DRangeFrom(IIIILandroid/renderscript/Allocation;II)V
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_24

    .line 805
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 807
    return-void
.end method

.method public copyFrom(Ljava/lang/Object;)V
    .registers 8
    .param p1, "array"    # Ljava/lang/Object;

    .prologue
    const-wide/32 v4, 0x8000

    .line 702
    const-wide/32 v0, 0x8000

    :try_start_6
    const-string v2, "copyFrom"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 703
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_1b

    .line 706
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 708
    return-void

    .line 706
    :catchall_1b
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public copyFrom([B)V
    .registers 4
    .param p1, "d"    # [B

    .prologue
    .line 742
    invoke-direct {p0}, validateIsInt8()V

    .line 743
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 744
    return-void
.end method

.method public copyFrom([F)V
    .registers 4
    .param p1, "d"    # [F

    .prologue
    .line 754
    invoke-direct {p0}, validateIsFloat32()V

    .line 755
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 756
    return-void
.end method

.method public copyFrom([I)V
    .registers 4
    .param p1, "d"    # [I

    .prologue
    .line 718
    invoke-direct {p0}, validateIsInt32()V

    .line 719
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 720
    return-void
.end method

.method public copyFrom([Landroid/renderscript/BaseObj;)V
    .registers 10
    .param p1, "d"    # [Landroid/renderscript/BaseObj;

    .prologue
    const-wide/32 v6, 0x8000

    .line 533
    const-wide/32 v2, 0x8000

    :try_start_6
    const-string v4, "copyFrom"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 534
    iget-object v2, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->validate()V

    .line 535
    invoke-direct {p0}, validateIsObject()V

    .line 536
    array-length v2, p1

    iget v3, p0, mCurrentCount:I

    if-eq v2, v3, :cond_43

    .line 537
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array size mismatch, allocation sizeX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mCurrentCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", array length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3e
    .catchall {:try_start_6 .. :try_end_3e} :catchall_3e

    .line 555
    :catchall_3e
    move-exception v2

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    .line 541
    :cond_43
    :try_start_43
    sget v2, Landroid/renderscript/RenderScript;->sPointerSize:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6b

    .line 542
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x4

    new-array v1, v2, [J

    .line 543
    .local v1, "i":[J
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_4f
    array-length v2, p1

    if-ge v0, v2, :cond_61

    .line 544
    mul-int/lit8 v2, v0, 0x4

    aget-object v3, p1, v0

    iget-object v4, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    aput-wide v4, v1, v2

    .line 543
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 546
    :cond_61
    const/4 v2, 0x0

    iget v3, p0, mCurrentCount:I

    invoke-virtual {p0, v2, v3, v1}, copy1DRangeFromUnchecked(IILjava/lang/Object;)V
    :try_end_67
    .catchall {:try_start_43 .. :try_end_67} :catchall_3e

    .line 555
    .end local v1    # "i":[J
    :goto_67
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 557
    return-void

    .line 548
    .end local v0    # "ct":I
    :cond_6b
    :try_start_6b
    array-length v2, p1

    new-array v1, v2, [I

    .line 549
    .local v1, "i":[I
    const/4 v0, 0x0

    .restart local v0    # "ct":I
    :goto_6f
    array-length v2, p1

    if-ge v0, v2, :cond_80

    .line 550
    aget-object v2, p1, v0

    iget-object v3, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v3}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    long-to-int v2, v2

    aput v2, v1, v0

    .line 549
    add-int/lit8 v0, v0, 0x1

    goto :goto_6f

    .line 552
    :cond_80
    const/4 v2, 0x0

    iget v3, p0, mCurrentCount:I

    invoke-virtual {p0, v2, v3, v1}, copy1DRangeFromUnchecked(II[I)V
    :try_end_86
    .catchall {:try_start_6b .. :try_end_86} :catchall_3e

    goto :goto_67
.end method

.method public copyFrom([S)V
    .registers 4
    .param p1, "d"    # [S

    .prologue
    .line 730
    invoke-direct {p0}, validateIsInt16()V

    .line 731
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 732
    return-void
.end method

.method public copyFromUnchecked(Ljava/lang/Object;)V
    .registers 8
    .param p1, "array"    # Ljava/lang/Object;

    .prologue
    const-wide/32 v4, 0x8000

    .line 639
    const-wide/32 v0, 0x8000

    :try_start_6
    const-string v2, "copyFromUnchecked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 640
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_1b

    .line 643
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 645
    return-void

    .line 643
    :catchall_1b
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public copyFromUnchecked([B)V
    .registers 4
    .param p1, "d"    # [B

    .prologue
    .line 677
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 678
    return-void
.end method

.method public copyFromUnchecked([F)V
    .registers 4
    .param p1, "d"    # [F

    .prologue
    .line 688
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 689
    return-void
.end method

.method public copyFromUnchecked([I)V
    .registers 4
    .param p1, "d"    # [I

    .prologue
    .line 655
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 656
    return-void
.end method

.method public copyFromUnchecked([S)V
    .registers 4
    .param p1, "d"    # [S

    .prologue
    .line 666
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, copyFromUnchecked(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 667
    return-void
.end method

.method public copyTo(Landroid/graphics/Bitmap;)V
    .registers 8
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const-wide/32 v4, 0x8000

    .line 1384
    const-wide/32 v0, 0x8000

    :try_start_6
    const-string v2, "copyTo"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1385
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 1386
    invoke-direct {p0, p1}, validateBitmapFormat(Landroid/graphics/Bitmap;)V

    .line 1387
    invoke-direct {p0, p1}, validateBitmapSize(Landroid/graphics/Bitmap;)V

    .line 1388
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nAllocationCopyToBitmap(JLandroid/graphics/Bitmap;)V
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_25

    .line 1390
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1392
    return-void

    .line 1390
    :catchall_25
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public copyTo(Ljava/lang/Object;)V
    .registers 4
    .param p1, "array"    # Ljava/lang/Object;

    .prologue
    .line 1428
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, validateObjectIsPrimitiveArray(Ljava/lang/Object;Z)Landroid/renderscript/Element$DataType;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1430
    return-void
.end method

.method public copyTo([B)V
    .registers 4
    .param p1, "d"    # [B

    .prologue
    .line 1440
    invoke-direct {p0}, validateIsInt8()V

    .line 1441
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1442
    return-void
.end method

.method public copyTo([F)V
    .registers 4
    .param p1, "d"    # [F

    .prologue
    .line 1476
    invoke-direct {p0}, validateIsFloat32()V

    .line 1477
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1478
    return-void
.end method

.method public copyTo([I)V
    .registers 4
    .param p1, "d"    # [I

    .prologue
    .line 1464
    invoke-direct {p0}, validateIsInt32()V

    .line 1465
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1466
    return-void
.end method

.method public copyTo([S)V
    .registers 4
    .param p1, "d"    # [S

    .prologue
    .line 1452
    invoke-direct {p0}, validateIsInt16()V

    .line 1453
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, copyTo(Ljava/lang/Object;Landroid/renderscript/Element$DataType;I)V

    .line 1454
    return-void
.end method

.method public copyToFieldPacker(IIIILandroid/renderscript/FieldPacker;)V
    .registers 17
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "component_number"    # I
    .param p5, "fp"    # Landroid/renderscript/FieldPacker;

    .prologue
    .line 1493
    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 1494
    iget-object v1, p0, mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v1, v1

    if-lt p4, v1, :cond_2d

    .line 1495
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Component_number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of range."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1497
    :cond_2d
    if-gez p1, :cond_37

    .line 1498
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Offset x must be >= 0."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1500
    :cond_37
    if-gez p2, :cond_41

    .line 1501
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Offset y must be >= 0."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1503
    :cond_41
    if-gez p3, :cond_4b

    .line 1504
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Offset z must be >= 0."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1507
    :cond_4b
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v9

    .line 1508
    .local v9, "data":[B
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/FieldPacker;->getPos()I

    move-result v10

    .line 1509
    .local v10, "data_length":I
    iget-object v1, p0, mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v1, v1, p4

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v0

    .line 1510
    .local v0, "eSize":I
    iget-object v1, p0, mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mArraySizes:[I

    aget v1, v1, p4

    mul-int/2addr v0, v1

    .line 1512
    if-eq v10, v0, :cond_93

    .line 1513
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field packer sizelength "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match component size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1517
    :cond_93
    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, getIDSafe()J

    move-result-wide v2

    iget v7, p0, mSelectedLOD:I

    move v4, p1

    move v5, p2

    move v6, p3

    move v8, p4

    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->nAllocationElementRead(JIIIII[BI)V

    .line 1519
    return-void
.end method

.method public destroy()V
    .registers 2

    .prologue
    .line 2398
    iget v0, p0, mUsage:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_a

    .line 2399
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setSurface(Landroid/view/Surface;)V

    .line 2401
    :cond_a
    invoke-super {p0}, Landroid/renderscript/BaseObj;->destroy()V

    .line 2402
    return-void
.end method

.method protected finalize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 359
    sget-object v0, Landroid/renderscript/RenderScript;->registerNativeFree:Ljava/lang/reflect/Method;

    sget-object v1, Landroid/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, mSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    invoke-super {p0}, Landroid/renderscript/BaseObj;->finalize()V

    .line 361
    return-void
.end method

.method public generateMipmaps()V
    .registers 5

    .prologue
    .line 916
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/renderscript/RenderScript;->nAllocationGenerateMipmaps(J)V

    .line 917
    return-void
.end method

.method public getBytesSize()I
    .registers 5

    .prologue
    .line 294
    iget-object v0, p0, mType:Landroid/renderscript/Type;

    iget v0, v0, Landroid/renderscript/Type;->mDimYuv:I

    if-eqz v0, :cond_21

    .line 295
    iget-object v0, p0, mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    move-result v0

    iget-object v1, p0, mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 297
    :goto_20
    return v0

    :cond_21
    iget-object v0, p0, mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    move-result v0

    iget-object v1, p0, mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_20
.end method

.method public getElement()Landroid/renderscript/Element;
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 5

    .prologue
    .line 2061
    iget v0, p0, mUsage:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_e

    .line 2062
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Allocation is not a surface texture."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2065
    :cond_e
    iget-object v0, p0, mGetSurfaceSurface:Landroid/view/Surface;

    if-nez v0, :cond_20

    .line 2066
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/renderscript/RenderScript;->nAllocationGetSurface(J)Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, mGetSurfaceSurface:Landroid/view/Surface;

    .line 2069
    :cond_20
    iget-object v0, p0, mGetSurfaceSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getType()Landroid/renderscript/Type;
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, mType:Landroid/renderscript/Type;

    return-object v0
.end method

.method public getUsage()I
    .registers 2

    .prologue
    .line 273
    iget v0, p0, mUsage:I

    return v0
.end method

.method public ioReceive()V
    .registers 7

    .prologue
    const-wide/32 v4, 0x8000

    .line 514
    const-wide/32 v0, 0x8000

    :try_start_6
    const-string v2, "ioReceive"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 515
    iget v0, p0, mUsage:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_1e

    .line 516
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Can only receive if IO_INPUT usage specified."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_19

    .line 522
    :catchall_19
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 519
    :cond_1e
    :try_start_1e
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 520
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/renderscript/RenderScript;->nAllocationIoReceive(J)V
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_19

    .line 522
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 524
    return-void
.end method

.method public ioSend()V
    .registers 7

    .prologue
    const-wide/32 v4, 0x8000

    .line 495
    const-wide/32 v0, 0x8000

    :try_start_6
    const-string v2, "ioSend"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 496
    iget v0, p0, mUsage:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_1e

    .line 497
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Can only send buffer if IO_OUTPUT usage specified."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_19

    .line 503
    :catchall_19
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 500
    :cond_1e
    :try_start_1e
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 501
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/renderscript/RenderScript;->nAllocationIoSend(J)V
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_19

    .line 503
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 505
    return-void
.end method

.method public declared-synchronized resize(I)V
    .registers 8
    .param p1, "dimX"    # I

    .prologue
    .line 1537
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1c

    .line 1538
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Resize is not allowed in API 21+."

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_19

    .line 1537
    :catchall_19
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1540
    :cond_1c
    :try_start_1c
    iget-object v2, p0, mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    if-gtz v2, :cond_3c

    iget-object v2, p0, mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->getZ()I

    move-result v2

    if-gtz v2, :cond_3c

    iget-object v2, p0, mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v2

    if-nez v2, :cond_3c

    iget-object v2, p0, mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 1541
    :cond_3c
    new-instance v2, Landroid/renderscript/RSInvalidStateException;

    const-string v3, "Resize only support for 1D allocations at this time."

    invoke-direct {v2, v3}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1543
    :cond_44
    iget-object v2, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, p1}, Landroid/renderscript/RenderScript;->nAllocationResize1D(JI)V

    .line 1544
    iget-object v2, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->finish()V

    .line 1546
    iget-object v2, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/renderscript/RenderScript;->nAllocationGetType(J)J

    move-result-wide v0

    .line 1547
    .local v0, "typeID":J
    new-instance v2, Landroid/renderscript/Type;

    iget-object v3, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v0, v1, v3}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object v2, p0, mType:Landroid/renderscript/Type;

    .line 1548
    iget-object v2, p0, mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->updateFromNative()V

    .line 1549
    iget-object v2, p0, mType:Landroid/renderscript/Type;

    invoke-direct {p0, v2}, updateCacheInfo(Landroid/renderscript/Type;)V
    :try_end_73
    .catchall {:try_start_1c .. :try_end_73} :catchall_19

    .line 1550
    monitor-exit p0

    return-void
.end method

.method public setAutoPadding(Z)V
    .registers 2
    .param p1, "useAutoPadding"    # Z

    .prologue
    .line 284
    iput-boolean p1, p0, mAutoPadding:Z

    .line 285
    return-void
.end method

.method public setFromFieldPacker(IIIILandroid/renderscript/FieldPacker;)V
    .registers 17
    .param p1, "xoff"    # I
    .param p2, "yoff"    # I
    .param p3, "zoff"    # I
    .param p4, "component_number"    # I
    .param p5, "fp"    # Landroid/renderscript/FieldPacker;

    .prologue
    .line 854
    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 855
    iget-object v1, p0, mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v1, v1

    if-lt p4, v1, :cond_2d

    .line 856
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Component_number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of range."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 858
    :cond_2d
    if-gez p1, :cond_37

    .line 859
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Offset x must be >= 0."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 861
    :cond_37
    if-gez p2, :cond_41

    .line 862
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Offset y must be >= 0."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 864
    :cond_41
    if-gez p3, :cond_4b

    .line 865
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "Offset z must be >= 0."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 868
    :cond_4b
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v9

    .line 869
    .local v9, "data":[B
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/FieldPacker;->getPos()I

    move-result v10

    .line 870
    .local v10, "data_length":I
    iget-object v1, p0, mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v1, v1, p4

    invoke-virtual {v1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v0

    .line 871
    .local v0, "eSize":I
    iget-object v1, p0, mType:Landroid/renderscript/Type;

    iget-object v1, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    iget-object v1, v1, Landroid/renderscript/Element;->mArraySizes:[I

    aget v1, v1, p4

    mul-int/2addr v0, v1

    .line 873
    if-eq v10, v0, :cond_93

    .line 874
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field packer sizelength "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match component size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 878
    :cond_93
    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, getIDSafe()J

    move-result-wide v2

    iget v7, p0, mSelectedLOD:I

    move v4, p1

    move v5, p2

    move v6, p3

    move v8, p4

    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->nAllocationElementData(JIIIII[BI)V

    .line 880
    return-void
.end method

.method public setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    .registers 10
    .param p1, "xoff"    # I
    .param p2, "component_number"    # I
    .param p3, "fp"    # Landroid/renderscript/FieldPacker;

    .prologue
    const/4 v2, 0x0

    .line 840
    move-object v0, p0

    move v1, p1

    move v3, v2

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, setFromFieldPacker(IIIILandroid/renderscript/FieldPacker;)V

    .line 841
    return-void
.end method

.method public setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    .registers 10
    .param p1, "xoff"    # I
    .param p2, "fp"    # Landroid/renderscript/FieldPacker;

    .prologue
    .line 817
    iget-object v4, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v4}, Landroid/renderscript/RenderScript;->validate()V

    .line 818
    iget-object v4, p0, mType:Landroid/renderscript/Type;

    iget-object v4, v4, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v4}, Landroid/renderscript/Element;->getBytesSize()I

    move-result v3

    .line 819
    .local v3, "eSize":I
    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v1

    .line 820
    .local v1, "data":[B
    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getPos()I

    move-result v2

    .line 822
    .local v2, "data_length":I
    div-int v0, v2, v3

    .line 823
    .local v0, "count":I
    mul-int v4, v3, v0

    if-eq v4, v2, :cond_44

    .line 824
    new-instance v4, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Field packer length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not divisible by element size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 827
    :cond_44
    invoke-virtual {p0, p1, v0, v1}, copy1DRangeFromUnchecked(II[B)V

    .line 828
    return-void
.end method

.method public setOnBufferAvailableListener(Landroid/renderscript/Allocation$OnBufferAvailableListener;)V
    .registers 8
    .param p1, "callback"    # Landroid/renderscript/Allocation$OnBufferAvailableListener;

    .prologue
    .line 2376
    sget-object v1, mAllocationMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2377
    :try_start_3
    sget-object v0, mAllocationMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Long;

    iget-object v3, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2378
    iput-object p1, p0, mBufferNotifier:Landroid/renderscript/Allocation$OnBufferAvailableListener;

    .line 2379
    monitor-exit v1

    .line 2380
    return-void

    .line 2379
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public setSurface(Landroid/view/Surface;)V
    .registers 6
    .param p1, "sur"    # Landroid/view/Surface;

    .prologue
    .line 2079
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2080
    iget v0, p0, mUsage:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_13

    .line 2081
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Allocation is not USAGE_IO_OUTPUT."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2084
    :cond_13
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nAllocationSetSurface(JLandroid/view/Surface;)V

    .line 2085
    return-void
.end method

.method public syncAll(I)V
    .registers 8
    .param p1, "srcLocation"    # I

    .prologue
    const-wide/32 v4, 0x8000

    .line 460
    const-wide/32 v0, 0x8000

    :try_start_6
    const-string/jumbo v2, "syncAll"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 461
    sparse-switch p1, :sswitch_data_46

    .line 477
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Source must be exactly one usage type."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_17

    .line 482
    :catchall_17
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 464
    :sswitch_1c
    :try_start_1c
    iget v0, p0, mUsage:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_27

    .line 465
    iget-object v0, p0, mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, copyFrom(Landroid/graphics/Bitmap;)V

    .line 479
    :cond_27
    :goto_27
    :sswitch_27
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 480
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-direct {p0}, getIDSafe()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/renderscript/RenderScript;->nAllocationSyncAll(JI)V
    :try_end_35
    .catchall {:try_start_1c .. :try_end_35} :catchall_17

    .line 482
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 484
    return-void

    .line 472
    :sswitch_39
    :try_start_39
    iget v0, p0, mUsage:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_27

    .line 473
    iget-object v0, p0, mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, copyTo(Landroid/graphics/Bitmap;)V
    :try_end_44
    .catchall {:try_start_39 .. :try_end_44} :catchall_17

    goto :goto_27

    .line 461
    nop

    :sswitch_data_46
    .sparse-switch
        0x1 -> :sswitch_1c
        0x2 -> :sswitch_1c
        0x4 -> :sswitch_27
        0x8 -> :sswitch_27
        0x80 -> :sswitch_39
    .end sparse-switch
.end method

.method updateFromNative()V
    .registers 7

    .prologue
    .line 434
    invoke-super {p0}, Landroid/renderscript/BaseObj;->updateFromNative()V

    .line 435
    iget-object v2, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/renderscript/RenderScript;->nAllocationGetType(J)J

    move-result-wide v0

    .line 436
    .local v0, "typeID":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_28

    .line 437
    new-instance v2, Landroid/renderscript/Type;

    iget-object v3, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v0, v1, v3}, Landroid/renderscript/Type;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object v2, p0, mType:Landroid/renderscript/Type;

    .line 438
    iget-object v2, p0, mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->updateFromNative()V

    .line 439
    iget-object v2, p0, mType:Landroid/renderscript/Type;

    invoke-direct {p0, v2}, updateCacheInfo(Landroid/renderscript/Type;)V

    .line 441
    :cond_28
    return-void
.end method
