.class public final Landroid/renderscript/ScriptIntrinsicBLAS;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicBLAS.java"


# static fields
.field public static final CONJ_TRANSPOSE:I = 0x71

.field public static final LEFT:I = 0x8d

.field public static final LOWER:I = 0x7a

.field public static final NON_UNIT:I = 0x83

.field public static final NO_TRANSPOSE:I = 0x6f

.field public static final RIGHT:I = 0x8e

.field private static final RsBlas_bnnm:I = 0x3e8

.field private static final RsBlas_caxpy:I = 0x1d

.field private static final RsBlas_ccopy:I = 0x1c

.field private static final RsBlas_cdotc_sub:I = 0x6

.field private static final RsBlas_cdotu_sub:I = 0x5

.field private static final RsBlas_cgbmv:I = 0x40

.field private static final RsBlas_cgemm:I = 0x7d

.field private static final RsBlas_cgemv:I = 0x3f

.field private static final RsBlas_cgerc:I = 0x63

.field private static final RsBlas_cgeru:I = 0x62

.field private static final RsBlas_chbmv:I = 0x60

.field private static final RsBlas_chemm:I = 0x89

.field private static final RsBlas_chemv:I = 0x5f

.field private static final RsBlas_cher:I = 0x64

.field private static final RsBlas_cher2:I = 0x66

.field private static final RsBlas_cher2k:I = 0x8b

.field private static final RsBlas_cherk:I = 0x8a

.field private static final RsBlas_chpmv:I = 0x61

.field private static final RsBlas_chpr:I = 0x65

.field private static final RsBlas_chpr2:I = 0x67

.field private static final RsBlas_cscal:I = 0x2b

.field private static final RsBlas_csscal:I = 0x2d

.field private static final RsBlas_cswap:I = 0x1b

.field private static final RsBlas_csymm:I = 0x7e

.field private static final RsBlas_csyr2k:I = 0x80

.field private static final RsBlas_csyrk:I = 0x7f

.field private static final RsBlas_ctbmv:I = 0x42

.field private static final RsBlas_ctbsv:I = 0x45

.field private static final RsBlas_ctpmv:I = 0x43

.field private static final RsBlas_ctpsv:I = 0x46

.field private static final RsBlas_ctrmm:I = 0x81

.field private static final RsBlas_ctrmv:I = 0x41

.field private static final RsBlas_ctrsm:I = 0x82

.field private static final RsBlas_ctrsv:I = 0x44

.field private static final RsBlas_dasum:I = 0xc

.field private static final RsBlas_daxpy:I = 0x1a

.field private static final RsBlas_dcopy:I = 0x19

.field private static final RsBlas_ddot:I = 0x4

.field private static final RsBlas_dgbmv:I = 0x38

.field private static final RsBlas_dgemm:I = 0x77

.field private static final RsBlas_dgemv:I = 0x37

.field private static final RsBlas_dger:I = 0x5a

.field private static final RsBlas_dnrm2:I = 0xb

.field private static final RsBlas_drot:I = 0x27

.field private static final RsBlas_drotg:I = 0x25

.field private static final RsBlas_drotm:I = 0x28

.field private static final RsBlas_drotmg:I = 0x26

.field private static final RsBlas_dsbmv:I = 0x58

.field private static final RsBlas_dscal:I = 0x2a

.field private static final RsBlas_dsdot:I = 0x2

.field private static final RsBlas_dspmv:I = 0x59

.field private static final RsBlas_dspr:I = 0x5c

.field private static final RsBlas_dspr2:I = 0x5e

.field private static final RsBlas_dswap:I = 0x18

.field private static final RsBlas_dsymm:I = 0x78

.field private static final RsBlas_dsymv:I = 0x57

.field private static final RsBlas_dsyr:I = 0x5b

.field private static final RsBlas_dsyr2:I = 0x5d

.field private static final RsBlas_dsyr2k:I = 0x7a

.field private static final RsBlas_dsyrk:I = 0x79

.field private static final RsBlas_dtbmv:I = 0x3a

.field private static final RsBlas_dtbsv:I = 0x3d

.field private static final RsBlas_dtpmv:I = 0x3b

.field private static final RsBlas_dtpsv:I = 0x3e

.field private static final RsBlas_dtrmm:I = 0x7b

.field private static final RsBlas_dtrmv:I = 0x39

.field private static final RsBlas_dtrsm:I = 0x7c

.field private static final RsBlas_dtrsv:I = 0x3c

.field private static final RsBlas_dzasum:I = 0x10

.field private static final RsBlas_dznrm2:I = 0xf

.field private static final RsBlas_icamax:I = 0x13

.field private static final RsBlas_idamax:I = 0x12

.field private static final RsBlas_isamax:I = 0x11

.field private static final RsBlas_izamax:I = 0x14

.field private static final RsBlas_sasum:I = 0xa

.field private static final RsBlas_saxpy:I = 0x17

.field private static final RsBlas_scasum:I = 0xe

.field private static final RsBlas_scnrm2:I = 0xd

.field private static final RsBlas_scopy:I = 0x16

.field private static final RsBlas_sdot:I = 0x3

.field private static final RsBlas_sdsdot:I = 0x1

.field private static final RsBlas_sgbmv:I = 0x30

.field private static final RsBlas_sgemm:I = 0x71

.field private static final RsBlas_sgemv:I = 0x2f

.field private static final RsBlas_sger:I = 0x52

.field private static final RsBlas_snrm2:I = 0x9

.field private static final RsBlas_srot:I = 0x23

.field private static final RsBlas_srotg:I = 0x21

.field private static final RsBlas_srotm:I = 0x24

.field private static final RsBlas_srotmg:I = 0x22

.field private static final RsBlas_ssbmv:I = 0x50

.field private static final RsBlas_sscal:I = 0x29

.field private static final RsBlas_sspmv:I = 0x51

.field private static final RsBlas_sspr:I = 0x54

.field private static final RsBlas_sspr2:I = 0x56

.field private static final RsBlas_sswap:I = 0x15

.field private static final RsBlas_ssymm:I = 0x72

.field private static final RsBlas_ssymv:I = 0x4f

.field private static final RsBlas_ssyr:I = 0x53

.field private static final RsBlas_ssyr2:I = 0x55

.field private static final RsBlas_ssyr2k:I = 0x74

.field private static final RsBlas_ssyrk:I = 0x73

.field private static final RsBlas_stbmv:I = 0x32

.field private static final RsBlas_stbsv:I = 0x35

.field private static final RsBlas_stpmv:I = 0x33

.field private static final RsBlas_stpsv:I = 0x36

.field private static final RsBlas_strmm:I = 0x75

.field private static final RsBlas_strmv:I = 0x31

.field private static final RsBlas_strsm:I = 0x76

.field private static final RsBlas_strsv:I = 0x34

.field private static final RsBlas_zaxpy:I = 0x20

.field private static final RsBlas_zcopy:I = 0x1f

.field private static final RsBlas_zdotc_sub:I = 0x8

.field private static final RsBlas_zdotu_sub:I = 0x7

.field private static final RsBlas_zdscal:I = 0x2e

.field private static final RsBlas_zgbmv:I = 0x48

.field private static final RsBlas_zgemm:I = 0x83

.field private static final RsBlas_zgemv:I = 0x47

.field private static final RsBlas_zgerc:I = 0x6c

.field private static final RsBlas_zgeru:I = 0x6b

.field private static final RsBlas_zhbmv:I = 0x69

.field private static final RsBlas_zhemm:I = 0x8c

.field private static final RsBlas_zhemv:I = 0x68

.field private static final RsBlas_zher:I = 0x6d

.field private static final RsBlas_zher2:I = 0x6f

.field private static final RsBlas_zher2k:I = 0x8e

.field private static final RsBlas_zherk:I = 0x8d

.field private static final RsBlas_zhpmv:I = 0x6a

.field private static final RsBlas_zhpr:I = 0x6e

.field private static final RsBlas_zhpr2:I = 0x70

.field private static final RsBlas_zscal:I = 0x2c

.field private static final RsBlas_zswap:I = 0x1e

.field private static final RsBlas_zsymm:I = 0x84

.field private static final RsBlas_zsyr2k:I = 0x86

.field private static final RsBlas_zsyrk:I = 0x85

.field private static final RsBlas_ztbmv:I = 0x4a

.field private static final RsBlas_ztbsv:I = 0x4d

.field private static final RsBlas_ztpmv:I = 0x4b

.field private static final RsBlas_ztpsv:I = 0x4e

.field private static final RsBlas_ztrmm:I = 0x87

.field private static final RsBlas_ztrmv:I = 0x49

.field private static final RsBlas_ztrsm:I = 0x88

.field private static final RsBlas_ztrsv:I = 0x4c

.field public static final TRANSPOSE:I = 0x70

.field public static final UNIT:I = 0x84

.field public static final UPPER:I = 0x79


# instance fields
.field private mLUT:Landroid/renderscript/Allocation;


# direct methods
.method private constructor <init>(JLandroid/renderscript/RenderScript;)V
    .registers 5
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsic;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 38
    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;)Landroid/renderscript/ScriptIntrinsicBLAS;
    .registers 7
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 193
    const/16 v2, 0xd

    invoke-static {p0}, Landroid/renderscript/Element;->U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    move-result-wide v0

    .line 194
    .local v0, "id":J
    new-instance v2, Landroid/renderscript/ScriptIntrinsicBLAS;

    invoke-direct {v2, v0, v1, p0}, <init>(JLandroid/renderscript/RenderScript;)V

    return-object v2
.end method

.method static validateConjTranspose(I)V
    .registers 3
    .param p0, "Trans"    # I

    .prologue
    .line 252
    const/16 v0, 0x6f

    if-eq p0, v0, :cond_10

    const/16 v0, 0x71

    if-eq p0, v0, :cond_10

    .line 254
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Invalid transpose passed to BLAS"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_10
    return-void
.end method

.method static validateDiag(I)V
    .registers 3
    .param p0, "Diag"    # I

    .prologue
    .line 259
    const/16 v0, 0x83

    if-eq p0, v0, :cond_10

    const/16 v0, 0x84

    if-eq p0, v0, :cond_10

    .line 260
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Invalid diag passed to BLAS"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_10
    return-void
.end method

.method static validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V
    .registers 13
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "TransA"    # I
    .param p2, "A"    # Landroid/renderscript/Allocation;
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I

    .prologue
    const/4 v5, 0x1

    .line 276
    invoke-static {p1}, validateTranspose(I)V

    .line 277
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v0

    .line 278
    .local v0, "M":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v1

    .line 279
    .local v1, "N":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 282
    :cond_3e
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "Called BLAS with wrong Element type"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 284
    :cond_46
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v4

    if-gt v4, v5, :cond_5a

    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v4

    if-le v4, v5, :cond_62

    .line 285
    :cond_5a
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 288
    :cond_62
    if-lez p4, :cond_66

    if-gtz p6, :cond_6e

    .line 289
    :cond_66
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "Vector increments must be greater than 0"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 291
    :cond_6e
    const/4 v2, -0x1

    .local v2, "expectedXDim":I
    const/4 v3, -0x1

    .line 292
    .local v3, "expectedYDim":I
    const/16 v4, 0x6f

    if-ne p1, v4, :cond_9a

    .line 293
    add-int/lit8 v4, v1, -0x1

    mul-int/2addr v4, p4

    add-int/lit8 v2, v4, 0x1

    .line 294
    add-int/lit8 v4, v0, -0x1

    mul-int/2addr v4, p6

    add-int/lit8 v3, v4, 0x1

    .line 299
    :goto_7e
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    if-ne v4, v2, :cond_92

    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    if-eq v4, v3, :cond_a5

    .line 301
    :cond_92
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "Incorrect vector dimensions for GEMV"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 296
    :cond_9a
    add-int/lit8 v4, v0, -0x1

    mul-int/2addr v4, p4

    add-int/lit8 v2, v4, 0x1

    .line 297
    add-int/lit8 v4, v1, -0x1

    mul-int/2addr v4, p6

    add-int/lit8 v3, v4, 0x1

    goto :goto_7e

    .line 303
    :cond_a5
    return-void
.end method

.method static validateGER(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 12
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "X"    # Landroid/renderscript/Allocation;
    .param p2, "incX"    # I
    .param p3, "Y"    # Landroid/renderscript/Allocation;
    .param p4, "incY"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;

    .prologue
    const/4 v5, 0x1

    .line 1275
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 1278
    :cond_2b
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "Called BLAS with wrong Element type"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1281
    :cond_33
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v4

    if-gt v4, v5, :cond_47

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v4

    if-le v4, v5, :cond_4f

    .line 1282
    :cond_47
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1285
    :cond_4f
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v0

    .line 1286
    .local v0, "M":I
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v1

    .line 1288
    .local v1, "N":I
    if-lt v1, v5, :cond_63

    if-ge v0, v5, :cond_6b

    .line 1289
    :cond_63
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "M and N must be 1 or greater for GER"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1291
    :cond_6b
    if-lez p2, :cond_6f

    if-gtz p4, :cond_77

    .line 1292
    :cond_6f
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "Vector increments must be greater than 0"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1294
    :cond_77
    add-int/lit8 v4, v0, -0x1

    mul-int/2addr v4, p2

    add-int/lit8 v2, v4, 0x1

    .line 1295
    .local v2, "expectedXDim":I
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    if-eq v4, v2, :cond_8e

    .line 1296
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "Incorrect vector dimensions for GER"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1298
    :cond_8e
    add-int/lit8 v4, v1, -0x1

    mul-int/2addr v4, p4

    add-int/lit8 v3, v4, 0x1

    .line 1299
    .local v3, "expectedYDim":I
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    if-eq v4, v3, :cond_a5

    .line 1300
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "Incorrect vector dimensions for GER"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1304
    :cond_a5
    return-void
.end method

.method static validateGERU(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 12
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "X"    # Landroid/renderscript/Allocation;
    .param p2, "incX"    # I
    .param p3, "Y"    # Landroid/renderscript/Allocation;
    .param p4, "incY"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;

    .prologue
    const/4 v5, 0x1

    .line 1799
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 1802
    :cond_2b
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "Called BLAS with wrong Element type"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1804
    :cond_33
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v4

    if-gt v4, v5, :cond_47

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v4

    if-le v4, v5, :cond_4f

    .line 1805
    :cond_47
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1808
    :cond_4f
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v0

    .line 1809
    .local v0, "M":I
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v1

    .line 1810
    .local v1, "N":I
    if-lez p2, :cond_63

    if-gtz p4, :cond_6b

    .line 1811
    :cond_63
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "Vector increments must be greater than 0"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1813
    :cond_6b
    add-int/lit8 v4, v0, -0x1

    mul-int/2addr v4, p2

    add-int/lit8 v2, v4, 0x1

    .line 1814
    .local v2, "expectedXDim":I
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    if-eq v4, v2, :cond_82

    .line 1815
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "Incorrect vector dimensions for GERU"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1817
    :cond_82
    add-int/lit8 v4, v1, -0x1

    mul-int/2addr v4, p4

    add-int/lit8 v3, v4, 0x1

    .line 1818
    .local v3, "expectedYDim":I
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    if-eq v4, v3, :cond_99

    .line 1819
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "Incorrect vector dimensions for GERU"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1822
    :cond_99
    return-void
.end method

.method static validateHEMM(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 8
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Side"    # I
    .param p2, "A"    # Landroid/renderscript/Allocation;
    .param p3, "B"    # Landroid/renderscript/Allocation;
    .param p4, "C"    # Landroid/renderscript/Allocation;

    .prologue
    .line 3056
    invoke-static {p1}, validateSide(I)V

    .line 3058
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 3061
    :cond_2d
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called BLAS with wrong Element type"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3065
    :cond_35
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v0

    .line 3066
    .local v0, "adim":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-eq v0, v1, :cond_4f

    .line 3067
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called HEMM with non-square A"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3069
    :cond_4f
    const/16 v1, 0x8d

    if-ne p1, v1, :cond_5d

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-ne v0, v1, :cond_6b

    :cond_5d
    const/16 v1, 0x8e

    if-ne p1, v1, :cond_73

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-eq v0, v1, :cond_73

    .line 3071
    :cond_6b
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called HEMM with invalid B"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3073
    :cond_73
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    if-ne v1, v2, :cond_97

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    if-eq v1, v2, :cond_9f

    .line 3075
    :cond_97
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called HEMM with mismatched B and C"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3077
    :cond_9f
    return-void
.end method

.method static validateHER2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 8
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Trans"    # I
    .param p2, "A"    # Landroid/renderscript/Allocation;
    .param p3, "B"    # Landroid/renderscript/Allocation;
    .param p4, "C"    # Landroid/renderscript/Allocation;

    .prologue
    .line 3195
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 3198
    :cond_2a
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called BLAS with wrong Element type"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3200
    :cond_32
    invoke-static {p1}, validateConjTranspose(I)V

    .line 3201
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v0

    .line 3202
    .local v0, "cdim":I
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-eq v0, v1, :cond_4f

    .line 3203
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called HER2K with non-square C"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3205
    :cond_4f
    const/16 v1, 0x6f

    if-ne p1, v1, :cond_65

    .line 3206
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-eq v1, v0, :cond_77

    .line 3207
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called HER2K with invalid matrices"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3210
    :cond_65
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-eq v1, v0, :cond_77

    .line 3211
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called HER2K with invalid matrices"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3214
    :cond_77
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    if-ne v1, v2, :cond_9b

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    if-eq v1, v2, :cond_a3

    .line 3215
    :cond_9b
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called HER2K with invalid A and B matrices"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3217
    :cond_a3
    return-void
.end method

.method static validateHERK(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 7
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Trans"    # I
    .param p2, "A"    # Landroid/renderscript/Allocation;
    .param p3, "C"    # Landroid/renderscript/Allocation;

    .prologue
    .line 3122
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 3124
    :cond_1c
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called BLAS with wrong Element type"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3126
    :cond_24
    invoke-static {p1}, validateConjTranspose(I)V

    .line 3127
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v0

    .line 3128
    .local v0, "cdim":I
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-eq v0, v1, :cond_41

    .line 3129
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called HERK with non-square C"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3131
    :cond_41
    const/16 v1, 0x6f

    if-ne p1, v1, :cond_57

    .line 3132
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-eq v0, v1, :cond_69

    .line 3133
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called HERK with invalid A"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3136
    :cond_57
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-eq v0, v1, :cond_69

    .line 3137
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called HERK with invalid A"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3140
    :cond_69
    return-void
.end method

.method static validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 16
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "TransA"    # I
    .param p2, "TransB"    # I
    .param p3, "Side"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "C"    # Landroid/renderscript/Allocation;

    .prologue
    const/16 v8, 0x71

    const/16 v7, 0x70

    .line 2260
    const/4 v0, -0x1

    .local v0, "aM":I
    const/4 v1, -0x1

    .local v1, "aN":I
    const/4 v2, -0x1

    .local v2, "bM":I
    const/4 v3, -0x1

    .local v3, "bN":I
    const/4 v4, -0x1

    .local v4, "cM":I
    const/4 v5, -0x1

    .line 2261
    .local v5, "cN":I
    if-eqz p4, :cond_1a

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v6

    if-eqz v6, :cond_3a

    :cond_1a
    if-eqz p5, :cond_2a

    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v6

    if-eqz v6, :cond_3a

    :cond_2a
    if-eqz p6, :cond_42

    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v6

    if-nez v6, :cond_42

    .line 2264
    :cond_3a
    new-instance v6, Landroid/renderscript/RSRuntimeException;

    const-string v7, "Called BLAS with wrong Element type"

    invoke-direct {v6, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2266
    :cond_42
    if-nez p6, :cond_4c

    .line 2268
    new-instance v6, Landroid/renderscript/RSRuntimeException;

    const-string v7, "Allocation C cannot be null"

    invoke-direct {v6, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2270
    :cond_4c
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    move-result v4

    .line 2271
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v5

    .line 2273
    const/16 v6, 0x8e

    if-ne p3, v6, :cond_a8

    .line 2274
    if-nez p4, :cond_64

    if-nez p5, :cond_68

    :cond_64
    if-eqz p4, :cond_70

    if-nez p5, :cond_70

    .line 2275
    :cond_68
    new-instance v6, Landroid/renderscript/RSRuntimeException;

    const-string v7, "Provided Matrix A without Matrix B, or vice versa"

    invoke-direct {v6, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2277
    :cond_70
    if-eqz p5, :cond_82

    .line 2278
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    move-result v2

    .line 2279
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v3

    .line 2281
    :cond_82
    if-eqz p4, :cond_94

    .line 2282
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    move-result v0

    .line 2283
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v1

    .line 2305
    :cond_94
    :goto_94
    if-eqz p4, :cond_f7

    if-eqz p5, :cond_f7

    if-eqz p6, :cond_f7

    .line 2306
    if-ne v1, v2, :cond_a0

    if-ne v0, v4, :cond_a0

    if-eq v3, v5, :cond_11d

    .line 2307
    :cond_a0
    new-instance v6, Landroid/renderscript/RSRuntimeException;

    const-string v7, "Called BLAS with invalid dimensions"

    invoke-direct {v6, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2286
    :cond_a8
    if-eqz p4, :cond_be

    .line 2287
    if-eq p1, v7, :cond_ae

    if-ne p1, v8, :cond_d5

    .line 2288
    :cond_ae
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    move-result v1

    .line 2289
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v0

    .line 2295
    :cond_be
    :goto_be
    if-eqz p5, :cond_94

    .line 2296
    if-eq p2, v7, :cond_c4

    if-ne p2, v8, :cond_e6

    .line 2297
    :cond_c4
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    move-result v3

    .line 2298
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v2

    goto :goto_94

    .line 2291
    :cond_d5
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    move-result v0

    .line 2292
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v1

    goto :goto_be

    .line 2300
    :cond_e6
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    move-result v2

    .line 2301
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v3

    goto :goto_94

    .line 2309
    :cond_f7
    if-eqz p4, :cond_10f

    if-eqz p6, :cond_10f

    .line 2311
    if-eq v4, v5, :cond_105

    .line 2312
    new-instance v6, Landroid/renderscript/RSRuntimeException;

    const-string v7, "Matrix C is not symmetric"

    invoke-direct {v6, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2314
    :cond_105
    if-eq v0, v4, :cond_11d

    .line 2315
    new-instance v6, Landroid/renderscript/RSRuntimeException;

    const-string v7, "Called BLAS with invalid dimensions"

    invoke-direct {v6, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2317
    :cond_10f
    if-eqz p4, :cond_11d

    if-eqz p5, :cond_11d

    .line 2319
    if-eq v1, v2, :cond_11d

    .line 2320
    new-instance v6, Landroid/renderscript/RSRuntimeException;

    const-string v7, "Called BLAS with invalid dimensions"

    invoke-direct {v6, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2324
    :cond_11d
    return-void
.end method

.method static validateSPMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)I
    .registers 15
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "Ap"    # Landroid/renderscript/Allocation;
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I

    .prologue
    const/4 v4, 0x1

    .line 1242
    invoke-static {p1}, validateUplo(I)V

    .line 1243
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 1246
    :cond_2e
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Called BLAS with wrong Element type"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1248
    :cond_36
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-gt v3, v4, :cond_4a

    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-le v3, v4, :cond_52

    .line 1249
    :cond_4a
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1252
    :cond_52
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-le v3, v4, :cond_64

    .line 1253
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Ap must have a Y dimension of 0 or 1"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1256
    :cond_64
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    int-to-double v4, v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 1257
    .local v0, "N":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    mul-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    if-eq v3, v4, :cond_8c

    .line 1258
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Invalid dimension for Ap"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1260
    :cond_8c
    if-lez p4, :cond_90

    if-gtz p6, :cond_98

    .line 1261
    :cond_90
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Vector increments must be greater than 0"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1263
    :cond_98
    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v3, p4

    add-int/lit8 v1, v3, 0x1

    .line 1264
    .local v1, "expectedXDim":I
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-eq v3, v1, :cond_af

    .line 1265
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Incorrect vector dimensions for SPMV"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1267
    :cond_af
    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v3, p6

    add-int/lit8 v2, v3, 0x1

    .line 1268
    .local v2, "expectedYDim":I
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-eq v3, v2, :cond_c6

    .line 1269
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Incorrect vector dimensions for SPMV"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1272
    :cond_c6
    return v0
.end method

.method static validateSPR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I
    .registers 11
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;

    .prologue
    const/4 v3, 0x1

    .line 1330
    invoke-static {p1}, validateUplo(I)V

    .line 1331
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 1333
    :cond_20
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Called BLAS with wrong Element type"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1335
    :cond_28
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    if-le v2, v3, :cond_3a

    .line 1336
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1339
    :cond_3a
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    if-le v2, v3, :cond_4c

    .line 1340
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Ap must have a Y dimension of 0 or 1"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1343
    :cond_4c
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 1344
    .local v0, "N":I
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    mul-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    if-eq v2, v3, :cond_74

    .line 1345
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Invalid dimension for Ap"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1347
    :cond_74
    if-gtz p3, :cond_7e

    .line 1348
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Vector increments must be greater than 0"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1350
    :cond_7e
    add-int/lit8 v2, v0, -0x1

    mul-int/2addr v2, p3

    add-int/lit8 v1, v2, 0x1

    .line 1351
    .local v1, "expectedXDim":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    if-eq v2, v1, :cond_95

    .line 1352
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Incorrect vector dimensions for SPR"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1355
    :cond_95
    return v0
.end method

.method static validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I
    .registers 15
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "Ap"    # Landroid/renderscript/Allocation;

    .prologue
    const/4 v4, 0x1

    .line 1387
    invoke-static {p1}, validateUplo(I)V

    .line 1388
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 1391
    :cond_2e
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Called BLAS with wrong Element type"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1393
    :cond_36
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-gt v3, v4, :cond_4a

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-le v3, v4, :cond_52

    .line 1394
    :cond_4a
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1397
    :cond_52
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-le v3, v4, :cond_64

    .line 1398
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Ap must have a Y dimension of 0 or 1"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1401
    :cond_64
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    int-to-double v4, v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 1402
    .local v0, "N":I
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    mul-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    if-eq v3, v4, :cond_8c

    .line 1403
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Invalid dimension for Ap"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1405
    :cond_8c
    if-lez p3, :cond_90

    if-gtz p5, :cond_98

    .line 1406
    :cond_90
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Vector increments must be greater than 0"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1408
    :cond_98
    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v3, p3

    add-int/lit8 v1, v3, 0x1

    .line 1409
    .local v1, "expectedXDim":I
    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v3, p5

    add-int/lit8 v2, v3, 0x1

    .line 1410
    .local v2, "expectedYDim":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-ne v3, v1, :cond_b6

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-eq v3, v2, :cond_be

    .line 1411
    :cond_b6
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Incorrect vector dimensions for SPR2"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1414
    :cond_be
    return v0
.end method

.method static validateSYMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;II)I
    .registers 12
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "A"    # Landroid/renderscript/Allocation;
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "Y"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "incY"    # I

    .prologue
    const/4 v4, 0x1

    .line 1214
    invoke-static {p1}, validateUplo(I)V

    .line 1215
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v0

    .line 1216
    .local v0, "N":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-eq v3, v0, :cond_1e

    .line 1217
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "A must be a square matrix for SYMV"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1219
    :cond_1e
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 1222
    :cond_48
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Called BLAS with wrong Element type"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1224
    :cond_50
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-gt v3, v4, :cond_64

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-le v3, v4, :cond_6c

    .line 1225
    :cond_64
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1228
    :cond_6c
    if-lez p5, :cond_70

    if-gtz p6, :cond_78

    .line 1229
    :cond_70
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Vector increments must be greater than 0"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1231
    :cond_78
    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v3, p5

    add-int/lit8 v1, v3, 0x1

    .line 1232
    .local v1, "expectedXDim":I
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-eq v3, v1, :cond_8f

    .line 1233
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Incorrect vector dimensions for SYMV"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1235
    :cond_8f
    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v3, p6

    add-int/lit8 v2, v3, 0x1

    .line 1236
    .local v2, "expectedYDim":I
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-eq v3, v2, :cond_a6

    .line 1237
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Incorrect vector dimensions for SYMV"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1239
    :cond_a6
    return v0
.end method

.method static validateSYR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I
    .registers 9
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;

    .prologue
    .line 1306
    invoke-static {p1}, validateUplo(I)V

    .line 1307
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 1309
    :cond_1f
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Called BLAS with wrong Element type"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1312
    :cond_27
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v0

    .line 1314
    .local v0, "N":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_42

    .line 1315
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1317
    :cond_42
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    if-eq v0, v2, :cond_54

    .line 1318
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "A must be a symmetric matrix"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1320
    :cond_54
    if-gtz p3, :cond_5e

    .line 1321
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Vector increments must be greater than 0"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1323
    :cond_5e
    add-int/lit8 v2, v0, -0x1

    mul-int/2addr v2, p3

    add-int/lit8 v1, v2, 0x1

    .line 1324
    .local v1, "expectedXDim":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    if-eq v2, v1, :cond_75

    .line 1325
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Incorrect vector dimensions for SYR"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1327
    :cond_75
    return v0
.end method

.method static validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I
    .registers 12
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "A"    # Landroid/renderscript/Allocation;

    .prologue
    const/4 v4, 0x1

    .line 1359
    invoke-static {p1}, validateUplo(I)V

    .line 1360
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 1363
    :cond_2e
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Called BLAS with wrong Element type"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1366
    :cond_36
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-gt v3, v4, :cond_4a

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-le v3, v4, :cond_52

    .line 1367
    :cond_4a
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1370
    :cond_52
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v0

    .line 1372
    .local v0, "N":I
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-eq v0, v3, :cond_6c

    .line 1373
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "A must be a symmetric matrix"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1375
    :cond_6c
    if-lez p3, :cond_70

    if-gtz p5, :cond_78

    .line 1376
    :cond_70
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Vector increments must be greater than 0"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1378
    :cond_78
    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v3, p3

    add-int/lit8 v1, v3, 0x1

    .line 1379
    .local v1, "expectedXDim":I
    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v3, p5

    add-int/lit8 v2, v3, 0x1

    .line 1380
    .local v2, "expectedYDim":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-ne v3, v1, :cond_96

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-eq v3, v2, :cond_9e

    .line 1381
    :cond_96
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Incorrect vector dimensions for SYR"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1383
    :cond_9e
    return v0
.end method

.method static validateSYR2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 8
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Trans"    # I
    .param p2, "A"    # Landroid/renderscript/Allocation;
    .param p3, "B"    # Landroid/renderscript/Allocation;
    .param p4, "C"    # Landroid/renderscript/Allocation;

    .prologue
    .line 2684
    invoke-static {p1}, validateTranspose(I)V

    .line 2685
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 2688
    :cond_2d
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called BLAS with wrong Element type"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2690
    :cond_35
    const/4 v0, -0x1

    .line 2693
    .local v0, "Cdim":I
    const/16 v1, 0x70

    if-ne p1, v1, :cond_5e

    .line 2695
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v0

    .line 2700
    :goto_42
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-ne v1, v0, :cond_56

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-eq v1, v0, :cond_67

    .line 2701
    :cond_56
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Invalid symmetric matrix in SYR2K"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2698
    :cond_5e
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v0

    goto :goto_42

    .line 2704
    :cond_67
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    if-ne v1, v2, :cond_8b

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    if-eq v1, v2, :cond_93

    .line 2705
    :cond_8b
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Invalid A and B in SYR2K"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2707
    :cond_93
    return-void
.end method

.method static validateSide(I)V
    .registers 3
    .param p0, "Side"    # I

    .prologue
    .line 239
    const/16 v0, 0x8d

    if-eq p0, v0, :cond_10

    const/16 v0, 0x8e

    if-eq p0, v0, :cond_10

    .line 240
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Invalid side passed to BLAS"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_10
    return-void
.end method

.method static validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I
    .registers 13
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    const/4 v3, 0x1

    .line 559
    invoke-static {p2}, validateTranspose(I)V

    .line 560
    invoke-static {p1}, validateUplo(I)V

    .line 561
    invoke-static {p3}, validateDiag(I)V

    .line 562
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 564
    :cond_26
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Called BLAS with wrong Element type"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 566
    :cond_2e
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    if-le v2, v3, :cond_40

    .line 567
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 570
    :cond_40
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    if-le v2, v3, :cond_52

    .line 571
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Ap must have a Y dimension of 0 or 1"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 574
    :cond_52
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 576
    .local v0, "N":I
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    mul-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    if-eq v2, v3, :cond_7a

    .line 577
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Invalid dimension for Ap"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 579
    :cond_7a
    if-gtz p6, :cond_84

    .line 580
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Vector increments must be greater than 0"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 582
    :cond_84
    add-int/lit8 v2, v0, -0x1

    mul-int/2addr v2, p6

    add-int/lit8 v1, v2, 0x1

    .line 583
    .local v1, "expectedXDim":I
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    if-eq v2, v1, :cond_9b

    .line 584
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Incorrect vector dimensions for TPMV"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 587
    :cond_9b
    return v0
.end method

.method static validateTRMM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 11
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Side"    # I
    .param p2, "TransA"    # I
    .param p3, "A"    # Landroid/renderscript/Allocation;
    .param p4, "B"    # Landroid/renderscript/Allocation;

    .prologue
    .line 2814
    invoke-static {p1}, validateSide(I)V

    .line 2815
    invoke-static {p2}, validateTranspose(I)V

    .line 2816
    const/4 v0, -0x1

    .local v0, "aM":I
    const/4 v1, -0x1

    .local v1, "aN":I
    const/4 v2, -0x1

    .local v2, "bM":I
    const/4 v3, -0x1

    .line 2817
    .local v3, "bN":I
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 2819
    :cond_26
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "Called BLAS with wrong Element type"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2822
    :cond_2e
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v0

    .line 2823
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v1

    .line 2824
    if-eq v0, v1, :cond_48

    .line 2825
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "Called TRMM with a non-symmetric matrix A"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2828
    :cond_48
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v2

    .line 2829
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v3

    .line 2830
    const/16 v4, 0x8d

    if-ne p1, v4, :cond_66

    .line 2831
    if-eq v1, v2, :cond_70

    .line 2832
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "Called TRMM with invalid matrices"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2835
    :cond_66
    if-eq v3, v0, :cond_70

    .line 2836
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "Called TRMM with invalid matrices"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2839
    :cond_70
    return-void
.end method

.method static validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 11
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    .line 534
    invoke-static {p2}, validateTranspose(I)V

    .line 535
    invoke-static {p1}, validateUplo(I)V

    .line 536
    invoke-static {p3}, validateDiag(I)V

    .line 537
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v0

    .line 538
    .local v0, "N":I
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    if-eq v2, v0, :cond_23

    .line 539
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "A must be a square matrix for TRMV"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 541
    :cond_23
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 543
    :cond_3f
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Called BLAS with wrong Element type"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 545
    :cond_47
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_5a

    .line 546
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 549
    :cond_5a
    if-gtz p6, :cond_64

    .line 550
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Vector increments must be greater than 0"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 552
    :cond_64
    add-int/lit8 v2, v0, -0x1

    mul-int/2addr v2, p6

    add-int/lit8 v1, v2, 0x1

    .line 553
    .local v1, "expectedXDim":I
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    if-eq v2, v1, :cond_7b

    .line 554
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Incorrect vector dimensions for TRMV"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 556
    :cond_7b
    return-void
.end method

.method static validateTRSM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 10
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Side"    # I
    .param p2, "TransA"    # I
    .param p3, "A"    # Landroid/renderscript/Allocation;
    .param p4, "B"    # Landroid/renderscript/Allocation;

    .prologue
    .line 2934
    const/4 v0, -0x1

    .local v0, "adim":I
    const/4 v1, -0x1

    .local v1, "bM":I
    const/4 v2, -0x1

    .line 2935
    .local v2, "bN":I
    invoke-static {p1}, validateSide(I)V

    .line 2936
    invoke-static {p2}, validateTranspose(I)V

    .line 2937
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 2939
    :cond_25
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Called BLAS with wrong Element type"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2941
    :cond_2d
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v0

    .line 2942
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-eq v0, v3, :cond_47

    .line 2946
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Called TRSM with a non-symmetric matrix A"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2948
    :cond_47
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v1

    .line 2949
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v2

    .line 2950
    const/16 v3, 0x8d

    if-ne p1, v3, :cond_65

    .line 2952
    if-eq v0, v1, :cond_6f

    .line 2953
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Called TRSM with invalid matrix dimensions"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2957
    :cond_65
    if-eq v0, v2, :cond_6f

    .line 2958
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Called TRSM with invalid matrix dimensions"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2961
    :cond_6f
    return-void
.end method

.method static validateTranspose(I)V
    .registers 3
    .param p0, "Trans"    # I

    .prologue
    .line 245
    const/16 v0, 0x6f

    if-eq p0, v0, :cond_14

    const/16 v0, 0x70

    if-eq p0, v0, :cond_14

    const/16 v0, 0x71

    if-eq p0, v0, :cond_14

    .line 247
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Invalid transpose passed to BLAS"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_14
    return-void
.end method

.method static validateUplo(I)V
    .registers 3
    .param p0, "Uplo"    # I

    .prologue
    .line 265
    const/16 v0, 0x79

    if-eq p0, v0, :cond_10

    const/16 v0, 0x7a

    if-eq p0, v0, :cond_10

    .line 266
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Invalid uplo passed to BLAS"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_10
    return-void
.end method


# virtual methods
.method public BNNM(Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;II)V
    .registers 25
    .param p1, "A"    # Landroid/renderscript/Allocation;
    .param p2, "a_offset"    # I
    .param p3, "B"    # Landroid/renderscript/Allocation;
    .param p4, "b_offset"    # I
    .param p5, "C"    # Landroid/renderscript/Allocation;
    .param p6, "c_offset"    # I
    .param p7, "c_mult"    # I

    .prologue
    .line 3290
    move-object/from16 v0, p0

    iget-object v1, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const/16 v2, 0x6f

    const/16 v3, 0x70

    const/4 v4, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    invoke-static/range {v1 .. v7}, validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 3292
    if-ltz p2, :cond_1e

    const/16 v1, 0xff

    move/from16 v0, p2

    if-le v0, v1, :cond_26

    .line 3293
    :cond_1e
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Invalid a_offset passed to BNNM"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3295
    :cond_26
    if-ltz p4, :cond_2e

    const/16 v1, 0xff

    move/from16 v0, p4

    if-le v0, v1, :cond_36

    .line 3296
    :cond_2e
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Invalid b_offset passed to BNNM"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3298
    :cond_36
    const/4 v4, -0x1

    .local v4, "M":I
    const/4 v5, -0x1

    .local v5, "N":I
    const/4 v6, -0x1

    .line 3299
    .local v6, "K":I
    invoke-virtual/range {p1 .. p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v4

    .line 3300
    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v5

    .line 3301
    invoke-virtual/range {p1 .. p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v6

    .line 3304
    move-object/from16 v0, p0

    iget-object v1, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v7, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v13

    move/from16 v9, p2

    move/from16 v12, p4

    move/from16 v15, p6

    move/from16 v16, p7

    invoke-virtual/range {v1 .. v16}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_BNNM(JIIIJIJIJII)V

    .line 3306
    return-void
.end method

.method public CGBMV(IIILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;I)V
    .registers 39
    .param p1, "TransA"    # I
    .param p2, "KL"    # I
    .param p3, "KU"    # I
    .param p4, "alpha"    # Landroid/renderscript/Float2;
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I
    .param p8, "beta"    # Landroid/renderscript/Float2;
    .param p9, "Y"    # Landroid/renderscript/Allocation;
    .param p10, "incY"    # I

    .prologue
    .line 489
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p9

    move/from16 v8, p10

    invoke-static/range {v2 .. v8}, validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    .line 490
    if-ltz p2, :cond_1b

    if-gez p3, :cond_23

    .line 491
    :cond_1b
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "KL and KU must be greater than or equal to 0"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 493
    :cond_23
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v11

    .line 494
    .local v11, "M":I
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v12

    .line 495
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x40

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p4

    iget v14, v0, Landroid/renderscript/Float2;->x:F

    move-object/from16 v0, p4

    iget v15, v0, Landroid/renderscript/Float2;->y:F

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p8

    iget v0, v0, Landroid/renderscript/Float2;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p8

    iget v0, v0, Landroid/renderscript/Float2;->y:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p9

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    move/from16 v6, p1

    move/from16 v24, p7

    move/from16 v25, p10

    move/from16 v26, p2

    move/from16 v27, p3

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 496
    return-void
.end method

.method public CGEMM(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Float2;Landroid/renderscript/Allocation;)V
    .registers 36
    .param p1, "TransA"    # I
    .param p2, "TransB"    # I
    .param p3, "alpha"    # Landroid/renderscript/Float2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # Landroid/renderscript/Float2;
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .prologue
    .line 2415
    invoke-static/range {p1 .. p1}, validateTranspose(I)V

    .line 2416
    invoke-static/range {p2 .. p2}, validateTranspose(I)V

    .line 2417
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const/4 v5, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2418
    const/4 v11, -0x1

    .local v11, "M":I
    const/4 v12, -0x1

    .local v12, "N":I
    const/4 v13, -0x1

    .line 2419
    .local v13, "K":I
    const/16 v2, 0x6f

    move/from16 v0, p1

    if-eq v0, v2, :cond_98

    .line 2420
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v11

    .line 2421
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v13

    .line 2426
    :goto_35
    const/16 v2, 0x6f

    move/from16 v0, p2

    if-eq v0, v2, :cond_a9

    .line 2427
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .line 2431
    :goto_43
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x7d

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p3

    iget v14, v0, Landroid/renderscript/Float2;->x:F

    move-object/from16 v0, p3

    iget v15, v0, Landroid/renderscript/Float2;->y:F

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p6

    iget v0, v0, Landroid/renderscript/Float2;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p6

    iget v0, v0, Landroid/renderscript/Float2;->y:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 2433
    return-void

    .line 2423
    :cond_98
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v11

    .line 2424
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v13

    goto :goto_35

    .line 2429
    :cond_a9
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v12

    goto :goto_43
.end method

.method public CGEMV(ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;I)V
    .registers 37
    .param p1, "TransA"    # I
    .param p2, "alpha"    # Landroid/renderscript/Float2;
    .param p3, "A"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # Landroid/renderscript/Float2;
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    .prologue
    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v2 .. v8}, validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    .line 366
    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v11

    .line 367
    .local v11, "M":I
    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v12

    .line 368
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x3f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget v14, v0, Landroid/renderscript/Float2;->x:F

    move-object/from16 v0, p2

    iget v15, v0, Landroid/renderscript/Float2;->y:F

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p6

    iget v0, v0, Landroid/renderscript/Float2;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p6

    iget v0, v0, Landroid/renderscript/Float2;->y:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p1

    move/from16 v24, p5

    move/from16 v25, p8

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 369
    return-void
.end method

.method public CGERC(Landroid/renderscript/Float2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 35
    .param p1, "alpha"    # Landroid/renderscript/Float2;
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "A"    # Landroid/renderscript/Allocation;

    .prologue
    .line 1941
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, validateGERU(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V

    .line 1942
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v11

    .line 1943
    .local v11, "M":I
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v12

    .line 1944
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x63

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget v14, v0, Landroid/renderscript/Float2;->x:F

    move-object/from16 v0, p1

    iget v15, v0, Landroid/renderscript/Float2;->y:F

    move-object/from16 v0, p0

    iget-object v0, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v0, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v18, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v22, v0

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v24, p3

    move/from16 v25, p5

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 1945
    return-void
.end method

.method public CGERU(Landroid/renderscript/Float2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 35
    .param p1, "alpha"    # Landroid/renderscript/Float2;
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "A"    # Landroid/renderscript/Allocation;

    .prologue
    .line 1920
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, validateGERU(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V

    .line 1921
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v11

    .line 1922
    .local v11, "M":I
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v12

    .line 1923
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x62

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget v14, v0, Landroid/renderscript/Float2;->x:F

    move-object/from16 v0, p1

    iget v15, v0, Landroid/renderscript/Float2;->y:F

    move-object/from16 v0, p0

    iget-object v0, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v0, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v18, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v22, v0

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v24, p3

    move/from16 v25, p5

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 1924
    return-void
.end method

.method public CHBMV(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;I)V
    .registers 38
    .param p1, "Uplo"    # I
    .param p2, "K"    # I
    .param p3, "alpha"    # Landroid/renderscript/Float2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I
    .param p7, "beta"    # Landroid/renderscript/Float2;
    .param p8, "Y"    # Landroid/renderscript/Allocation;
    .param p9, "incY"    # I

    .prologue
    .line 1870
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p4

    invoke-static/range {v2 .. v8}, validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v12

    .line 1871
    .local v12, "N":I
    if-gez p2, :cond_22

    .line 1872
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "K must be 0 or greater for HBMV"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1874
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x60

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p3

    iget v14, v0, Landroid/renderscript/Float2;->x:F

    move-object/from16 v0, p3

    iget v15, v0, Landroid/renderscript/Float2;->y:F

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p7

    iget v0, v0, Landroid/renderscript/Float2;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/renderscript/Float2;->y:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p8

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, p1

    move/from16 v13, p2

    move/from16 v24, p6

    move/from16 v25, p9

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 1875
    return-void
.end method

.method public CHEMM(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Float2;Landroid/renderscript/Allocation;)V
    .registers 38
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "alpha"    # Landroid/renderscript/Float2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # Landroid/renderscript/Float2;
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .prologue
    .line 3094
    invoke-static/range {p2 .. p2}, validateUplo(I)V

    .line 3095
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, validateHEMM(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 3096
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x89

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v10

    invoke-virtual {v10}, Landroid/renderscript/Type;->getY()I

    move-result v13

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v10

    invoke-virtual {v10}, Landroid/renderscript/Type;->getX()I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/renderscript/Float2;->x:F

    move/from16 v16, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/renderscript/Float2;->y:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v10, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v10, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    move-object/from16 v0, p6

    iget v0, v0, Landroid/renderscript/Float2;->x:F

    move/from16 v22, v0

    move-object/from16 v0, p6

    iget v0, v0, Landroid/renderscript/Float2;->y:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v10, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v24

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v10, p1

    move/from16 v11, p2

    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 3098
    return-void
.end method

.method public CHEMV(ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;I)V
    .registers 37
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/renderscript/Float2;
    .param p3, "A"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # Landroid/renderscript/Float2;
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    .prologue
    .line 1841
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v8}, validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v12

    .line 1842
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x5f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget v14, v0, Landroid/renderscript/Float2;->x:F

    move-object/from16 v0, p2

    iget v15, v0, Landroid/renderscript/Float2;->y:F

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p6

    iget v0, v0, Landroid/renderscript/Float2;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p6

    iget v0, v0, Landroid/renderscript/Float2;->y:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, p1

    move/from16 v24, p5

    move/from16 v25, p8

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 1843
    return-void
.end method

.method public CHER(IFLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 36
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;

    .prologue
    .line 1961
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {v4, v0, v1, v2, v3}, validateSYR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v14

    .line 1962
    .local v14, "N":I
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x64

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v24

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v11, p1

    move/from16 v16, p2

    move/from16 v26, p4

    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 1963
    return-void
.end method

.method public CHER2(ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 36
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/renderscript/Float2;
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "A"    # Landroid/renderscript/Allocation;

    .prologue
    .line 2007
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v12

    .line 2008
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x66

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget v14, v0, Landroid/renderscript/Float2;->x:F

    move-object/from16 v0, p2

    iget v15, v0, Landroid/renderscript/Float2;->y:F

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, p1

    move/from16 v24, p4

    move/from16 v25, p6

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 2009
    return-void
.end method

.method public CHER2K(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;FLandroid/renderscript/Allocation;)V
    .registers 38
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # Landroid/renderscript/Float2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # F
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .prologue
    .line 3234
    invoke-static/range {p1 .. p1}, validateUplo(I)V

    .line 3235
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, validateHER2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 3236
    const/4 v15, 0x0

    .line 3237
    .local v15, "k":I
    const/16 v4, 0x6f

    move/from16 v0, p2

    if-ne v0, v4, :cond_7f

    .line 3238
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v15

    .line 3242
    :goto_25
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x8b

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v14

    move-object/from16 v0, p3

    iget v0, v0, Landroid/renderscript/Float2;->x:F

    move/from16 v16, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/renderscript/Float2;->y:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v24

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v8, p2

    move/from16 v11, p1

    move/from16 v22, p6

    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 3244
    return-void

    .line 3240
    :cond_7f
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v15

    goto :goto_25
.end method

.method public CHERK(IIFLandroid/renderscript/Allocation;FLandroid/renderscript/Allocation;)V
    .registers 37
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # F
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "beta"    # F
    .param p6, "C"    # Landroid/renderscript/Allocation;

    .prologue
    .line 3156
    invoke-static/range {p1 .. p1}, validateUplo(I)V

    .line 3157
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    invoke-static {v4, v0, v1, v2}, validateHERK(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 3158
    const/4 v15, 0x0

    .line 3159
    .local v15, "k":I
    const/16 v4, 0x71

    move/from16 v0, p2

    if-ne v0, v4, :cond_6d

    .line 3160
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v15

    .line 3164
    :goto_23
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x8a

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v14

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v24

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v8, p2

    move/from16 v11, p1

    move/from16 v16, p3

    move/from16 v22, p5

    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 3166
    return-void

    .line 3162
    :cond_6d
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v15

    goto :goto_23
.end method

.method public CHPMV(ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;I)V
    .registers 37
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/renderscript/Float2;
    .param p3, "Ap"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # Landroid/renderscript/Float2;
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    .prologue
    .line 1902
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v8}, validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v12

    .line 1903
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x61

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget v14, v0, Landroid/renderscript/Float2;->x:F

    move-object/from16 v0, p2

    iget v15, v0, Landroid/renderscript/Float2;->y:F

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p6

    iget v0, v0, Landroid/renderscript/Float2;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p6

    iget v0, v0, Landroid/renderscript/Float2;->y:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, p1

    move/from16 v24, p5

    move/from16 v25, p8

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 1904
    return-void
.end method

.method public CHPR(IFLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 36
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Ap"    # Landroid/renderscript/Allocation;

    .prologue
    .line 1987
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {v4, v0, v1, v2, v3}, validateSPR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v14

    .line 1988
    .local v14, "N":I
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x65

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v24

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v11, p1

    move/from16 v16, p2

    move/from16 v26, p4

    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 1989
    return-void
.end method

.method public CHPR2(ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 36
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/renderscript/Float2;
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "Ap"    # Landroid/renderscript/Allocation;

    .prologue
    .line 2035
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v12

    .line 2036
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x67

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget v14, v0, Landroid/renderscript/Float2;->x:F

    move-object/from16 v0, p2

    iget v15, v0, Landroid/renderscript/Float2;->y:F

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, p1

    move/from16 v24, p4

    move/from16 v25, p6

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 2037
    return-void
.end method

.method public CSYMM(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Float2;Landroid/renderscript/Allocation;)V
    .registers 36
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "alpha"    # Landroid/renderscript/Float2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # Landroid/renderscript/Float2;
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .prologue
    .line 2540
    invoke-static/range {p1 .. p1}, validateSide(I)V

    .line 2541
    invoke-static/range {p2 .. p2}, validateUplo(I)V

    .line 2542
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-eq v2, v3, :cond_20

    .line 2543
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Matrix A is not symmetric"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2545
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2546
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x7e

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getY()I

    move-result v11

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v12

    const/4 v13, 0x0

    move-object/from16 v0, p3

    iget v14, v0, Landroid/renderscript/Float2;->x:F

    move-object/from16 v0, p3

    iget v15, v0, Landroid/renderscript/Float2;->y:F

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p6

    iget v0, v0, Landroid/renderscript/Float2;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p6

    iget v0, v0, Landroid/renderscript/Float2;->y:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v8, p1

    move/from16 v9, p2

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 2548
    return-void
.end method

.method public CSYR2K(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Float2;Landroid/renderscript/Allocation;)V
    .registers 38
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # Landroid/renderscript/Float2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # Landroid/renderscript/Float2;
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .prologue
    .line 2776
    invoke-static/range {p1 .. p1}, validateUplo(I)V

    .line 2777
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, validateSYR2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2778
    const/4 v15, -0x1

    .line 2779
    .local v15, "K":I
    const/16 v4, 0x6f

    move/from16 v0, p2

    if-eq v0, v4, :cond_87

    .line 2780
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v15

    .line 2784
    :goto_25
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x80

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v14

    move-object/from16 v0, p3

    iget v0, v0, Landroid/renderscript/Float2;->x:F

    move/from16 v16, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/renderscript/Float2;->y:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    move-object/from16 v0, p6

    iget v0, v0, Landroid/renderscript/Float2;->x:F

    move/from16 v22, v0

    move-object/from16 v0, p6

    iget v0, v0, Landroid/renderscript/Float2;->y:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v24

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v8, p2

    move/from16 v11, p1

    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 2785
    return-void

    .line 2782
    :cond_87
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v15

    goto :goto_25
.end method

.method public CSYRK(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Float2;Landroid/renderscript/Allocation;)V
    .registers 35
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # Landroid/renderscript/Float2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "beta"    # Landroid/renderscript/Float2;
    .param p6, "C"    # Landroid/renderscript/Allocation;

    .prologue
    .line 2643
    invoke-static/range {p2 .. p2}, validateTranspose(I)V

    .line 2644
    invoke-static/range {p1 .. p1}, validateUplo(I)V

    .line 2645
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    invoke-static/range {v2 .. v8}, validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2646
    const/4 v13, -0x1

    .line 2647
    .local v13, "K":I
    const/16 v2, 0x6f

    move/from16 v0, p2

    if-eq v0, v2, :cond_7f

    .line 2648
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v13

    .line 2652
    :goto_29
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x7f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v12

    move-object/from16 v0, p3

    iget v14, v0, Landroid/renderscript/Float2;->x:F

    move-object/from16 v0, p3

    iget v15, v0, Landroid/renderscript/Float2;->y:F

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    const-wide/16 v18, 0x0

    move-object/from16 v0, p5

    iget v0, v0, Landroid/renderscript/Float2;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p5

    iget v0, v0, Landroid/renderscript/Float2;->y:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 2654
    return-void

    .line 2650
    :cond_7f
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v13

    goto :goto_29
.end method

.method public CTBMV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 36
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I

    .prologue
    .line 751
    if-gez p4, :cond_a

    .line 752
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "K must be greater than or equal to 0"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 754
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 755
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .line 756
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x42

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v13, p4

    move/from16 v24, p7

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 757
    return-void
.end method

.method public CTBSV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 36
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I

    .prologue
    .line 1063
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 1064
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .line 1065
    .local v12, "N":I
    if-gez p4, :cond_29

    .line 1066
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Number of diagonals must be positive"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1068
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x45

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v13, p4

    move/from16 v24, p7

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 1069
    return-void
.end method

.method public CTPMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 35
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    .line 864
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    move-result v12

    .line 865
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x43

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v24, p6

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 866
    return-void
.end method

.method public CTPSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 35
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    .line 1179
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    move-result v12

    .line 1180
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x46

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v24, p6

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 1181
    return-void
.end method

.method public CTRMM(IIIILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 38
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # Landroid/renderscript/Float2;
    .param p6, "A"    # Landroid/renderscript/Allocation;
    .param p7, "B"    # Landroid/renderscript/Allocation;

    .prologue
    .line 2903
    invoke-static/range {p2 .. p2}, validateUplo(I)V

    .line 2904
    invoke-static/range {p4 .. p4}, validateDiag(I)V

    .line 2905
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, validateTRMM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2906
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x81

    const/4 v9, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getY()I

    move-result v13

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p5

    iget v0, v0, Landroid/renderscript/Float2;->x:F

    move/from16 v16, v0

    move-object/from16 v0, p5

    iget v0, v0, Landroid/renderscript/Float2;->y:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v8, p3

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p4

    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 2908
    return-void
.end method

.method public CTRMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 35
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 643
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .line 644
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x41

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v24, p6

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 645
    return-void
.end method

.method public CTRSM(IIIILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 38
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # Landroid/renderscript/Float2;
    .param p6, "A"    # Landroid/renderscript/Allocation;
    .param p7, "B"    # Landroid/renderscript/Allocation;

    .prologue
    .line 3025
    invoke-static/range {p2 .. p2}, validateUplo(I)V

    .line 3026
    invoke-static/range {p4 .. p4}, validateDiag(I)V

    .line 3027
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, validateTRSM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 3028
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x82

    const/4 v9, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getY()I

    move-result v13

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p5

    iget v0, v0, Landroid/renderscript/Float2;->x:F

    move/from16 v16, v0

    move-object/from16 v0, p5

    iget v0, v0, Landroid/renderscript/Float2;->y:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v8, p3

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p4

    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 3030
    return-void
.end method

.method public CTRSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 35
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    .line 951
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 952
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .line 953
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x44

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v24, p6

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 955
    return-void
.end method

.method public DGBMV(IIIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IDLandroid/renderscript/Allocation;I)V
    .registers 41
    .param p1, "TransA"    # I
    .param p2, "KL"    # I
    .param p3, "KU"    # I
    .param p4, "alpha"    # D
    .param p6, "A"    # Landroid/renderscript/Allocation;
    .param p7, "X"    # Landroid/renderscript/Allocation;
    .param p8, "incX"    # I
    .param p9, "beta"    # D
    .param p11, "Y"    # Landroid/renderscript/Allocation;
    .param p12, "incY"    # I

    .prologue
    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p11

    move/from16 v8, p12

    invoke-static/range {v2 .. v8}, validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    .line 455
    if-ltz p2, :cond_1b

    if-gez p3, :cond_23

    .line 456
    :cond_1b
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "KL and KU must be greater than or equal to 0"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 458
    :cond_23
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v11

    .line 459
    .local v11, "M":I
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v12

    .line 460
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x38

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p11

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    move/from16 v6, p1

    move-wide/from16 v14, p4

    move-wide/from16 v20, p9

    move/from16 v24, p8

    move/from16 v25, p12

    move/from16 v26, p2

    move/from16 v27, p3

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 461
    return-void
.end method

.method public DGEMM(IIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;DLandroid/renderscript/Allocation;)V
    .registers 39
    .param p1, "TransA"    # I
    .param p2, "TransB"    # I
    .param p3, "alpha"    # D
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "B"    # Landroid/renderscript/Allocation;
    .param p7, "beta"    # D
    .param p9, "C"    # Landroid/renderscript/Allocation;

    .prologue
    .line 2379
    invoke-static/range {p1 .. p1}, validateTranspose(I)V

    .line 2380
    invoke-static/range {p2 .. p2}, validateTranspose(I)V

    .line 2381
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const/4 v5, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p9

    invoke-static/range {v2 .. v8}, validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2382
    const/4 v11, -0x1

    .local v11, "M":I
    const/4 v12, -0x1

    .local v12, "N":I
    const/4 v13, -0x1

    .line 2383
    .local v13, "K":I
    const/16 v2, 0x6f

    move/from16 v0, p1

    if-eq v0, v2, :cond_88

    .line 2384
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v11

    .line 2385
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v13

    .line 2390
    :goto_35
    const/16 v2, 0x6f

    move/from16 v0, p2

    if-eq v0, v2, :cond_99

    .line 2391
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .line 2395
    :goto_43
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x77

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p9

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p1

    move/from16 v7, p2

    move-wide/from16 v14, p3

    move-wide/from16 v20, p7

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 2397
    return-void

    .line 2387
    :cond_88
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v11

    .line 2388
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v13

    goto :goto_35

    .line 2393
    :cond_99
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v12

    goto :goto_43
.end method

.method public DGEMV(IDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IDLandroid/renderscript/Allocation;I)V
    .registers 39
    .param p1, "TransA"    # I
    .param p2, "alpha"    # D
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I
    .param p7, "beta"    # D
    .param p9, "Y"    # Landroid/renderscript/Allocation;
    .param p10, "incY"    # I

    .prologue
    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p9

    move/from16 v8, p10

    invoke-static/range {v2 .. v8}, validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    .line 344
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v11

    .line 345
    .local v11, "M":I
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v12

    .line 346
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x37

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p9

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p1

    move-wide/from16 v14, p2

    move-wide/from16 v20, p7

    move/from16 v24, p6

    move/from16 v25, p10

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 347
    return-void
.end method

.method public DGER(DLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 37
    .param p1, "alpha"    # D
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "A"    # Landroid/renderscript/Allocation;

    .prologue
    .line 1699
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v11

    .line 1700
    .local v11, "M":I
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v12

    .line 1701
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v2 .. v7}, validateGER(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V

    .line 1702
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x5a

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v14, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v14}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-wide/from16 v14, p1

    move/from16 v24, p4

    move/from16 v25, p6

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 1703
    return-void
.end method

.method public DSBMV(IIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IDLandroid/renderscript/Allocation;I)V
    .registers 40
    .param p1, "Uplo"    # I
    .param p2, "K"    # I
    .param p3, "alpha"    # D
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I
    .param p8, "beta"    # D
    .param p10, "Y"    # Landroid/renderscript/Allocation;
    .param p11, "incY"    # I

    .prologue
    .line 1650
    if-gez p2, :cond_a

    .line 1651
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "K must be greater than or equal to 0"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1653
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p10

    move/from16 v7, p7

    move/from16 v8, p11

    invoke-static/range {v2 .. v8}, validateSYMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;II)I

    move-result v12

    .line 1654
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x58

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p10

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, p1

    move/from16 v13, p2

    move-wide/from16 v14, p3

    move-wide/from16 v20, p8

    move/from16 v24, p7

    move/from16 v25, p11

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 1655
    return-void
.end method

.method public DSPMV(IDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IDLandroid/renderscript/Allocation;I)V
    .registers 39
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I
    .param p7, "beta"    # D
    .param p9, "Y"    # Landroid/renderscript/Allocation;
    .param p10, "incY"    # I

    .prologue
    .line 1681
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p9

    move/from16 v8, p10

    invoke-static/range {v2 .. v8}, validateSPMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)I

    move-result v12

    .line 1682
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x59

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p9

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, p1

    move-wide/from16 v14, p2

    move-wide/from16 v20, p7

    move/from16 v24, p6

    move/from16 v25, p10

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 1683
    return-void
.end method

.method public DSPR(IDLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 37
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "Ap"    # Landroid/renderscript/Allocation;

    .prologue
    .line 1743
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p6

    invoke-static {v4, v0, v1, v2, v3}, validateSPR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v14

    .line 1744
    .local v14, "N":I
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x5c

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v11, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v11, p1

    move-wide/from16 v16, p2

    move/from16 v26, p5

    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 1745
    return-void
.end method

.method public DSPR2(IDLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 37
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "Y"    # Landroid/renderscript/Allocation;
    .param p7, "incY"    # I
    .param p8, "Ap"    # Landroid/renderscript/Allocation;

    .prologue
    .line 1789
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v2 .. v8}, validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v12

    .line 1790
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x5e

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p8

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, p1

    move-wide/from16 v14, p2

    move/from16 v24, p5

    move/from16 v25, p7

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 1791
    return-void
.end method

.method public DSYMM(IIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;DLandroid/renderscript/Allocation;)V
    .registers 39
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "alpha"    # D
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "B"    # Landroid/renderscript/Allocation;
    .param p7, "beta"    # D
    .param p9, "C"    # Landroid/renderscript/Allocation;

    .prologue
    .line 2514
    invoke-static/range {p1 .. p1}, validateSide(I)V

    .line 2515
    invoke-static/range {p2 .. p2}, validateUplo(I)V

    .line 2516
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-eq v2, v3, :cond_20

    .line 2517
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Matrix A is not symmetric"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2519
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v5, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p9

    invoke-static/range {v2 .. v8}, validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2520
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x78

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p9 .. p9}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getY()I

    move-result v11

    invoke-virtual/range {p9 .. p9}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p9

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v8, p1

    move/from16 v9, p2

    move-wide/from16 v14, p3

    move-wide/from16 v20, p7

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 2522
    return-void
.end method

.method public DSYMV(IDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IDLandroid/renderscript/Allocation;I)V
    .registers 39
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I
    .param p7, "beta"    # D
    .param p9, "Y"    # Landroid/renderscript/Allocation;
    .param p10, "incY"    # I

    .prologue
    .line 1621
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p9

    move/from16 v7, p6

    move/from16 v8, p10

    invoke-static/range {v2 .. v8}, validateSYMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;II)I

    move-result v12

    .line 1622
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x57

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p9

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, p1

    move-wide/from16 v14, p2

    move-wide/from16 v20, p7

    move/from16 v24, p6

    move/from16 v25, p10

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 1623
    return-void
.end method

.method public DSYR(IDLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 37
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "A"    # Landroid/renderscript/Allocation;

    .prologue
    .line 1718
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p6

    invoke-static {v4, v0, v1, v2, v3}, validateSYR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v14

    .line 1719
    .local v14, "N":I
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x5b

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v11, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v11, p1

    move-wide/from16 v16, p2

    move/from16 v26, p5

    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 1720
    return-void
.end method

.method public DSYR2(IDLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 37
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "Y"    # Landroid/renderscript/Allocation;
    .param p7, "incY"    # I
    .param p8, "A"    # Landroid/renderscript/Allocation;

    .prologue
    .line 1762
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v2 .. v8}, validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v12

    .line 1763
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x5d

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p8

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, p1

    move-wide/from16 v14, p2

    move/from16 v24, p5

    move/from16 v25, p7

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 1764
    return-void
.end method

.method public DSYR2K(IIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;DLandroid/renderscript/Allocation;)V
    .registers 41
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # D
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "B"    # Landroid/renderscript/Allocation;
    .param p7, "beta"    # D
    .param p9, "C"    # Landroid/renderscript/Allocation;

    .prologue
    .line 2750
    invoke-static/range {p1 .. p1}, validateUplo(I)V

    .line 2751
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p9

    invoke-static {v4, v0, v1, v2, v3}, validateSYR2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2752
    const/4 v15, -0x1

    .line 2753
    .local v15, "K":I
    const/16 v4, 0x6f

    move/from16 v0, p2

    if-eq v0, v4, :cond_73

    .line 2754
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v15

    .line 2758
    :goto_25
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x7a

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p9 .. p9}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p9

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v24

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v8, p2

    move/from16 v11, p1

    move-wide/from16 v16, p3

    move-wide/from16 v22, p7

    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 2759
    return-void

    .line 2756
    :cond_73
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v15

    goto :goto_25
.end method

.method public DSYRK(IIDLandroid/renderscript/Allocation;DLandroid/renderscript/Allocation;)V
    .registers 37
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # D
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # D
    .param p8, "C"    # Landroid/renderscript/Allocation;

    .prologue
    .line 2617
    invoke-static/range {p2 .. p2}, validateTranspose(I)V

    .line 2618
    invoke-static/range {p1 .. p1}, validateUplo(I)V

    .line 2619
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v6, p5

    move-object/from16 v8, p8

    invoke-static/range {v2 .. v8}, validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2620
    const/4 v13, -0x1

    .line 2621
    .local v13, "K":I
    const/16 v2, 0x6f

    move/from16 v0, p2

    if-eq v0, v2, :cond_6f

    .line 2622
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v13

    .line 2626
    :goto_29
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x79

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p8 .. p8}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p8

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move-wide/from16 v14, p3

    move-wide/from16 v20, p6

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 2627
    return-void

    .line 2624
    :cond_6f
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v13

    goto :goto_29
.end method

.method public DTBMV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 36
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I

    .prologue
    .line 720
    if-gez p4, :cond_a

    .line 721
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "K must be greater than or equal to 0"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 723
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 724
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .line 725
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x3a

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v13, p4

    move/from16 v24, p7

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 726
    return-void
.end method

.method public DTBSV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 36
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I

    .prologue
    .line 1032
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 1033
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .line 1034
    .local v12, "N":I
    if-gez p4, :cond_29

    .line 1035
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Number of diagonals must be positive"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1037
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x3d

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v13, p4

    move/from16 v24, p7

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 1038
    return-void
.end method

.method public DTPMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 35
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    .line 838
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    move-result v12

    .line 839
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x3b

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v24, p6

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 840
    return-void
.end method

.method public DTPSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 35
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    .line 1152
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    move-result v12

    .line 1153
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x3e

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v24, p6

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 1154
    return-void
.end method

.method public DTRMM(IIIIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 40
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # D
    .param p7, "A"    # Landroid/renderscript/Allocation;
    .param p8, "B"    # Landroid/renderscript/Allocation;

    .prologue
    .line 2880
    invoke-static/range {p2 .. p2}, validateUplo(I)V

    .line 2881
    invoke-static/range {p4 .. p4}, validateDiag(I)V

    .line 2882
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    invoke-static {v4, v0, v1, v2, v3}, validateTRMM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2883
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x7b

    const/4 v9, 0x0

    invoke-virtual/range {p8 .. p8}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getY()I

    move-result v13

    invoke-virtual/range {p8 .. p8}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p8

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v8, p3

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p4

    move-wide/from16 v16, p5

    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 2885
    return-void
.end method

.method public DTRMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 35
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 624
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .line 625
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x39

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v24, p6

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 626
    return-void
.end method

.method public DTRSM(IIIIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 40
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # D
    .param p7, "A"    # Landroid/renderscript/Allocation;
    .param p8, "B"    # Landroid/renderscript/Allocation;

    .prologue
    .line 3002
    invoke-static/range {p2 .. p2}, validateUplo(I)V

    .line 3003
    invoke-static/range {p4 .. p4}, validateDiag(I)V

    .line 3004
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    invoke-static {v4, v0, v1, v2, v3}, validateTRSM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 3005
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x7c

    const/4 v9, 0x0

    invoke-virtual/range {p8 .. p8}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getY()I

    move-result v13

    invoke-virtual/range {p8 .. p8}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p8

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v8, p3

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p4

    move-wide/from16 v16, p5

    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 3007
    return-void
.end method

.method public DTRSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 35
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    .line 930
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 931
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .line 932
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x3c

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v24, p6

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 934
    return-void
.end method

.method public SGBMV(IIIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IFLandroid/renderscript/Allocation;I)V
    .registers 38
    .param p1, "TransA"    # I
    .param p2, "KL"    # I
    .param p3, "KU"    # I
    .param p4, "alpha"    # F
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I
    .param p8, "beta"    # F
    .param p9, "Y"    # Landroid/renderscript/Allocation;
    .param p10, "incY"    # I

    .prologue
    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p9

    move/from16 v8, p10

    invoke-static/range {v2 .. v8}, validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    .line 420
    if-ltz p2, :cond_1b

    if-gez p3, :cond_23

    .line 421
    :cond_1b
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "KL and KU must be greater than or equal to 0"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 423
    :cond_23
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .line 424
    .local v12, "M":I
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v13

    .line 425
    .local v13, "N":I
    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x30

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    move/from16 v7, p1

    move/from16 v15, p4

    move/from16 v20, p8

    move/from16 v23, p7

    move/from16 v24, p10

    move/from16 v25, p2

    move/from16 v26, p3

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 426
    return-void
.end method

.method public SGEMM(IIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;FLandroid/renderscript/Allocation;)V
    .registers 35
    .param p1, "TransA"    # I
    .param p2, "TransB"    # I
    .param p3, "alpha"    # F
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # F
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .prologue
    .line 2342
    invoke-static/range {p1 .. p1}, validateTranspose(I)V

    .line 2343
    invoke-static/range {p2 .. p2}, validateTranspose(I)V

    .line 2344
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const/4 v5, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2346
    const/4 v12, -0x1

    .local v12, "M":I
    const/4 v13, -0x1

    .local v13, "N":I
    const/4 v14, -0x1

    .line 2347
    .local v14, "K":I
    const/16 v2, 0x6f

    move/from16 v0, p1

    if-eq v0, v2, :cond_88

    .line 2348
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v12

    .line 2349
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v14

    .line 2354
    :goto_35
    const/16 v2, 0x6f

    move/from16 v0, p2

    if-eq v0, v2, :cond_99

    .line 2355
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v13

    .line 2359
    :goto_43
    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x71

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v15, p3

    move/from16 v20, p6

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 2361
    return-void

    .line 2351
    :cond_88
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .line 2352
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v14

    goto :goto_35

    .line 2357
    :cond_99
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v13

    goto :goto_43
.end method

.method public SGEMV(IFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IFLandroid/renderscript/Allocation;I)V
    .registers 36
    .param p1, "TransA"    # I
    .param p2, "alpha"    # F
    .param p3, "A"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # F
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    .prologue
    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v2 .. v8}, validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    .line 322
    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .line 323
    .local v12, "M":I
    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v13

    .line 324
    .local v13, "N":I
    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x2f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v7, p1

    move/from16 v15, p2

    move/from16 v20, p6

    move/from16 v23, p5

    move/from16 v24, p8

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 325
    return-void
.end method

.method public SGER(FLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 34
    .param p1, "alpha"    # F
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "A"    # Landroid/renderscript/Allocation;

    .prologue
    .line 1511
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .line 1512
    .local v12, "M":I
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v13

    .line 1513
    .local v13, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, validateGER(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V

    .line 1514
    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x52

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v15, p1

    move/from16 v23, p3

    move/from16 v24, p5

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 1515
    return-void
.end method

.method public SSBMV(IIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IFLandroid/renderscript/Allocation;I)V
    .registers 37
    .param p1, "Uplo"    # I
    .param p2, "K"    # I
    .param p3, "alpha"    # F
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I
    .param p7, "beta"    # F
    .param p8, "Y"    # Landroid/renderscript/Allocation;
    .param p9, "incY"    # I

    .prologue
    .line 1462
    if-gez p2, :cond_a

    .line 1463
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "K must be greater than or equal to 0"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1465
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p8

    move/from16 v7, p6

    move/from16 v8, p9

    invoke-static/range {v2 .. v8}, validateSYMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;II)I

    move-result v13

    .line 1466
    .local v13, "N":I
    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x50

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v10, p1

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v20, p7

    move/from16 v23, p6

    move/from16 v24, p9

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 1467
    return-void
.end method

.method public SSPMV(IFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IFLandroid/renderscript/Allocation;I)V
    .registers 36
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "Ap"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # F
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    .prologue
    .line 1493
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v2 .. v8}, validateSPMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)I

    move-result v13

    .line 1494
    .local v13, "N":I
    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x51

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v10, p1

    move/from16 v15, p2

    move/from16 v20, p6

    move/from16 v23, p5

    move/from16 v24, p8

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 1495
    return-void
.end method

.method public SSPR(IFLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 35
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Ap"    # Landroid/renderscript/Allocation;

    .prologue
    .line 1555
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {v4, v0, v1, v2, v3}, validateSPR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v15

    .line 1556
    .local v15, "N":I
    move-object/from16 v0, p0

    iget-object v5, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    const/16 v8, 0x54

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v12, p1

    move/from16 v17, p2

    move/from16 v25, p4

    invoke-virtual/range {v5 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 1557
    return-void
.end method

.method public SSPR2(IFLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 35
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "Ap"    # Landroid/renderscript/Allocation;

    .prologue
    .line 1601
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v13

    .line 1602
    .local v13, "N":I
    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x56

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v10, p1

    move/from16 v15, p2

    move/from16 v23, p4

    move/from16 v24, p6

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 1603
    return-void
.end method

.method public SSYMM(IIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;FLandroid/renderscript/Allocation;)V
    .registers 35
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "alpha"    # F
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # F
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .prologue
    .line 2487
    invoke-static/range {p1 .. p1}, validateSide(I)V

    .line 2488
    invoke-static/range {p2 .. p2}, validateUplo(I)V

    .line 2490
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-eq v2, v3, :cond_20

    .line 2491
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Matrix A is not symmetric"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2493
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2494
    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x72

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v15, p3

    move/from16 v20, p6

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 2496
    return-void
.end method

.method public SSYMV(IFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IFLandroid/renderscript/Allocation;I)V
    .registers 36
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "A"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # F
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    .prologue
    .line 1433
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p7

    move/from16 v7, p5

    move/from16 v8, p8

    invoke-static/range {v2 .. v8}, validateSYMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;II)I

    move-result v13

    .line 1434
    .local v13, "N":I
    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x4f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v10, p1

    move/from16 v15, p2

    move/from16 v20, p6

    move/from16 v23, p5

    move/from16 v24, p8

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 1435
    return-void
.end method

.method public SSYR(IFLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 35
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;

    .prologue
    .line 1530
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {v4, v0, v1, v2, v3}, validateSYR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v15

    .line 1531
    .local v15, "N":I
    move-object/from16 v0, p0

    iget-object v5, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    const/16 v8, 0x53

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v12, p1

    move/from16 v17, p2

    move/from16 v25, p4

    invoke-virtual/range {v5 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 1532
    return-void
.end method

.method public SSYR2(IFLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 35
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "A"    # Landroid/renderscript/Allocation;

    .prologue
    .line 1574
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v13

    .line 1575
    .local v13, "N":I
    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x55

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v10, p1

    move/from16 v15, p2

    move/from16 v23, p4

    move/from16 v24, p6

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 1576
    return-void
.end method

.method public SSYR2K(IIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;FLandroid/renderscript/Allocation;)V
    .registers 37
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # F
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # F
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .prologue
    .line 2724
    invoke-static/range {p1 .. p1}, validateUplo(I)V

    .line 2725
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, validateSYR2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2726
    const/16 v16, -0x1

    .line 2727
    .local v16, "K":I
    const/16 v4, 0x6f

    move/from16 v0, p2

    if-eq v0, v4, :cond_74

    .line 2728
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v16

    .line 2732
    :goto_26
    move-object/from16 v0, p0

    iget-object v5, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    const/16 v8, 0x74

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v23

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v9, p2

    move/from16 v12, p1

    move/from16 v17, p3

    move/from16 v22, p6

    invoke-virtual/range {v5 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 2733
    return-void

    .line 2730
    :cond_74
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v16

    goto :goto_26
.end method

.method public SSYRK(IIFLandroid/renderscript/Allocation;FLandroid/renderscript/Allocation;)V
    .registers 34
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # F
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "beta"    # F
    .param p6, "C"    # Landroid/renderscript/Allocation;

    .prologue
    .line 2590
    invoke-static/range {p2 .. p2}, validateTranspose(I)V

    .line 2591
    invoke-static/range {p1 .. p1}, validateUplo(I)V

    .line 2592
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    invoke-static/range {v2 .. v8}, validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2593
    const/4 v14, -0x1

    .line 2594
    .local v14, "K":I
    const/16 v2, 0x6f

    move/from16 v0, p2

    if-eq v0, v2, :cond_6f

    .line 2595
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v14

    .line 2600
    :goto_29
    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x73

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v7, p2

    move/from16 v10, p1

    move/from16 v15, p3

    move/from16 v20, p5

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 2601
    return-void

    .line 2597
    :cond_6f
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v14

    goto :goto_29
.end method

.method public STBMV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 35
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I

    .prologue
    .line 689
    if-gez p4, :cond_a

    .line 690
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "K must be greater than or equal to 0"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 692
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 693
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v13

    .line 694
    .local v13, "N":I
    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x32

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v7, p2

    move/from16 v10, p1

    move/from16 v11, p3

    move/from16 v14, p4

    move/from16 v23, p7

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 695
    return-void
.end method

.method public STBSV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 35
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I

    .prologue
    .line 1001
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 1002
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v13

    .line 1003
    .local v13, "N":I
    if-gez p4, :cond_29

    .line 1004
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Number of diagonals must be positive"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1006
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x35

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v7, p2

    move/from16 v10, p1

    move/from16 v11, p3

    move/from16 v14, p4

    move/from16 v23, p7

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 1007
    return-void
.end method

.method public STPMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 34
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    .line 812
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    move-result v13

    .line 813
    .local v13, "N":I
    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x33

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v7, p2

    move/from16 v10, p1

    move/from16 v11, p3

    move/from16 v23, p6

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 814
    return-void
.end method

.method public STPSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 34
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    .line 1125
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    move-result v13

    .line 1126
    .local v13, "N":I
    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x36

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v7, p2

    move/from16 v10, p1

    move/from16 v11, p3

    move/from16 v23, p6

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 1127
    return-void
.end method

.method public STRMM(IIIIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 37
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # F
    .param p6, "A"    # Landroid/renderscript/Allocation;
    .param p7, "B"    # Landroid/renderscript/Allocation;

    .prologue
    .line 2857
    invoke-static/range {p2 .. p2}, validateUplo(I)V

    .line 2858
    invoke-static/range {p4 .. p4}, validateDiag(I)V

    .line 2859
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, validateTRMM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2860
    move-object/from16 v0, p0

    iget-object v5, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    const/16 v8, 0x75

    const/4 v10, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v14

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v9, p3

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p4

    move/from16 v17, p5

    invoke-virtual/range {v5 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 2862
    return-void
.end method

.method public STRMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 34
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    .line 604
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 605
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v13

    .line 606
    .local v13, "N":I
    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x31

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v7, p2

    move/from16 v10, p1

    move/from16 v11, p3

    move/from16 v23, p6

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 607
    return-void
.end method

.method public STRSM(IIIIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 37
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # F
    .param p6, "A"    # Landroid/renderscript/Allocation;
    .param p7, "B"    # Landroid/renderscript/Allocation;

    .prologue
    .line 2979
    invoke-static/range {p2 .. p2}, validateUplo(I)V

    .line 2980
    invoke-static/range {p4 .. p4}, validateDiag(I)V

    .line 2981
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, validateTRSM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2982
    move-object/from16 v0, p0

    iget-object v5, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    const/16 v8, 0x76

    const/4 v10, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v14

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v9, p3

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p4

    move/from16 v17, p5

    invoke-virtual/range {v5 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 2984
    return-void
.end method

.method public STRSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 34
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    .line 909
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 910
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v13

    .line 911
    .local v13, "N":I
    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x34

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v7, p2

    move/from16 v10, p1

    move/from16 v11, p3

    move/from16 v23, p6

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 913
    return-void
.end method

.method public ZGBMV(IIILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;I)V
    .registers 43
    .param p1, "TransA"    # I
    .param p2, "KL"    # I
    .param p3, "KU"    # I
    .param p4, "alpha"    # Landroid/renderscript/Double2;
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I
    .param p8, "beta"    # Landroid/renderscript/Double2;
    .param p9, "Y"    # Landroid/renderscript/Allocation;
    .param p10, "incY"    # I

    .prologue
    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p9

    move/from16 v8, p10

    invoke-static/range {v2 .. v8}, validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    .line 525
    if-ltz p2, :cond_1b

    if-gez p3, :cond_23

    .line 526
    :cond_1b
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "KL and KU must be greater than or equal to 0"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 528
    :cond_23
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v11

    .line 529
    .local v11, "M":I
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v12

    .line 530
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x48

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p4

    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    move-object/from16 v0, p4

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    move-object/from16 v0, p8

    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p8

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p9

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v26

    move/from16 v6, p1

    move/from16 v28, p7

    move/from16 v29, p10

    move/from16 v30, p2

    move/from16 v31, p3

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 531
    return-void
.end method

.method public ZGEMM(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Double2;Landroid/renderscript/Allocation;)V
    .registers 40
    .param p1, "TransA"    # I
    .param p2, "TransB"    # I
    .param p3, "alpha"    # Landroid/renderscript/Double2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # Landroid/renderscript/Double2;
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .prologue
    .line 2451
    invoke-static/range {p1 .. p1}, validateTranspose(I)V

    .line 2452
    invoke-static/range {p2 .. p2}, validateTranspose(I)V

    .line 2453
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const/4 v5, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2454
    const/4 v11, -0x1

    .local v11, "M":I
    const/4 v12, -0x1

    .local v12, "N":I
    const/4 v13, -0x1

    .line 2455
    .local v13, "K":I
    const/16 v2, 0x6f

    move/from16 v0, p1

    if-eq v0, v2, :cond_9a

    .line 2456
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v11

    .line 2457
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v13

    .line 2462
    :goto_35
    const/16 v2, 0x6f

    move/from16 v0, p2

    if-eq v0, v2, :cond_ab

    .line 2463
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .line 2467
    :goto_43
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x83

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p3

    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v26

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 2469
    return-void

    .line 2459
    :cond_9a
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v11

    .line 2460
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v13

    goto :goto_35

    .line 2465
    :cond_ab
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v12

    goto :goto_43
.end method

.method public ZGEMV(ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;I)V
    .registers 41
    .param p1, "TransA"    # I
    .param p2, "alpha"    # Landroid/renderscript/Double2;
    .param p3, "A"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # Landroid/renderscript/Double2;
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    .prologue
    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v2 .. v8}, validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    .line 388
    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v11

    .line 389
    .local v11, "M":I
    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v12

    .line 390
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x47

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v26

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v6, p1

    move/from16 v28, p5

    move/from16 v29, p8

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 391
    return-void
.end method

.method public ZGERC(Landroid/renderscript/Double2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 39
    .param p1, "alpha"    # Landroid/renderscript/Double2;
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "A"    # Landroid/renderscript/Allocation;

    .prologue
    .line 2156
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, validateGERU(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V

    .line 2157
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v11

    .line 2158
    .local v11, "M":I
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v12

    .line 2159
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x6c

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v20, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v26, v0

    move-object/from16 v0, p6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v26

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v28, p3

    move/from16 v29, p5

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 2160
    return-void
.end method

.method public ZGERU(Landroid/renderscript/Double2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 39
    .param p1, "alpha"    # Landroid/renderscript/Double2;
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "A"    # Landroid/renderscript/Allocation;

    .prologue
    .line 2135
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, validateGERU(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V

    .line 2136
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v11

    .line 2137
    .local v11, "M":I
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v12

    .line 2138
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x6b

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v20, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v26, v0

    move-object/from16 v0, p6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v26

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v28, p3

    move/from16 v29, p5

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 2139
    return-void
.end method

.method public ZHBMV(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;I)V
    .registers 42
    .param p1, "Uplo"    # I
    .param p2, "K"    # I
    .param p3, "alpha"    # Landroid/renderscript/Double2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I
    .param p7, "beta"    # Landroid/renderscript/Double2;
    .param p8, "Y"    # Landroid/renderscript/Allocation;
    .param p9, "incY"    # I

    .prologue
    .line 2085
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p4

    invoke-static/range {v2 .. v8}, validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v12

    .line 2086
    .local v12, "N":I
    if-gez p2, :cond_22

    .line 2087
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "K must be 0 or greater for HBMV"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2089
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x69

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p3

    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    move-object/from16 v0, p7

    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p7

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p8

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v26

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v9, p1

    move/from16 v13, p2

    move/from16 v28, p6

    move/from16 v29, p9

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 2090
    return-void
.end method

.method public ZHEMM(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Double2;Landroid/renderscript/Allocation;)V
    .registers 42
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "alpha"    # Landroid/renderscript/Double2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # Landroid/renderscript/Double2;
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .prologue
    .line 3115
    invoke-static/range {p2 .. p2}, validateUplo(I)V

    .line 3116
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, validateHEMM(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 3117
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x8c

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v10

    invoke-virtual {v10}, Landroid/renderscript/Type;->getY()I

    move-result v13

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v10

    invoke-virtual {v10}, Landroid/renderscript/Type;->getX()I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v10, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v10, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v10, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v28

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v10, p1

    move/from16 v11, p2

    invoke-virtual/range {v4 .. v33}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 3119
    return-void
.end method

.method public ZHEMV(ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;I)V
    .registers 41
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/renderscript/Double2;
    .param p3, "A"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # Landroid/renderscript/Double2;
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    .prologue
    .line 2056
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v8}, validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v12

    .line 2057
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x68

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v26

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v9, p1

    move/from16 v28, p5

    move/from16 v29, p8

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 2058
    return-void
.end method

.method public ZHER(IDLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 41
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "A"    # Landroid/renderscript/Allocation;

    .prologue
    .line 2176
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p6

    invoke-static {v4, v0, v1, v2, v3}, validateSYR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v14

    .line 2177
    .local v14, "N":I
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x6d

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v28

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v11, p1

    move-wide/from16 v16, p2

    move/from16 v30, p5

    invoke-virtual/range {v4 .. v33}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 2178
    return-void
.end method

.method public ZHER2(ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 40
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/renderscript/Double2;
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "A"    # Landroid/renderscript/Allocation;

    .prologue
    .line 2222
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v12

    .line 2223
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x6f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v26

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v9, p1

    move/from16 v28, p4

    move/from16 v29, p6

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 2224
    return-void
.end method

.method public ZHER2K(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;DLandroid/renderscript/Allocation;)V
    .registers 43
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # Landroid/renderscript/Double2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # D
    .param p8, "C"    # Landroid/renderscript/Allocation;

    .prologue
    .line 3261
    invoke-static/range {p1 .. p1}, validateUplo(I)V

    .line 3262
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p8

    invoke-static {v4, v0, v1, v2, v3}, validateHER2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 3263
    const/4 v15, 0x0

    .line 3264
    .local v15, "k":I
    const/16 v4, 0x6f

    move/from16 v0, p2

    if-ne v0, v4, :cond_7f

    .line 3265
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v15

    .line 3269
    :goto_25
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x8e

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p8 .. p8}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v14

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const-wide/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p8

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v28

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v8, p2

    move/from16 v11, p1

    move-wide/from16 v24, p6

    invoke-virtual/range {v4 .. v33}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 3271
    return-void

    .line 3267
    :cond_7f
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v15

    goto :goto_25
.end method

.method public ZHERK(IIDLandroid/renderscript/Allocation;DLandroid/renderscript/Allocation;)V
    .registers 43
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # D
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # D
    .param p8, "C"    # Landroid/renderscript/Allocation;

    .prologue
    .line 3182
    invoke-static/range {p1 .. p1}, validateUplo(I)V

    .line 3183
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p8

    invoke-static {v4, v0, v1, v2}, validateHERK(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 3184
    const/4 v15, 0x0

    .line 3185
    .local v15, "k":I
    const/16 v4, 0x71

    move/from16 v0, p2

    if-ne v0, v4, :cond_6d

    .line 3186
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v15

    .line 3190
    :goto_23
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x8d

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p8 .. p8}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v14

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p8

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v28

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v8, p2

    move/from16 v11, p1

    move-wide/from16 v16, p3

    move-wide/from16 v24, p6

    invoke-virtual/range {v4 .. v33}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 3192
    return-void

    .line 3188
    :cond_6d
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v15

    goto :goto_23
.end method

.method public ZHPMV(ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;I)V
    .registers 41
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/renderscript/Double2;
    .param p3, "Ap"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # Landroid/renderscript/Double2;
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    .prologue
    .line 2117
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v8}, validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v12

    .line 2118
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x6a

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v26

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v9, p1

    move/from16 v28, p5

    move/from16 v29, p8

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 2119
    return-void
.end method

.method public ZHPR(IDLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 41
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "Ap"    # Landroid/renderscript/Allocation;

    .prologue
    .line 2202
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p6

    invoke-static {v4, v0, v1, v2, v3}, validateSPR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v14

    .line 2203
    .local v14, "N":I
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x6e

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v28

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v11, p1

    move-wide/from16 v16, p2

    move/from16 v30, p5

    invoke-virtual/range {v4 .. v33}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 2204
    return-void
.end method

.method public ZHPR2(ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 40
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/renderscript/Double2;
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "Ap"    # Landroid/renderscript/Allocation;

    .prologue
    .line 2250
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v12

    .line 2251
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x70

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v26

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v9, p1

    move/from16 v28, p4

    move/from16 v29, p6

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 2252
    return-void
.end method

.method public ZSYMM(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Double2;Landroid/renderscript/Allocation;)V
    .registers 40
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "alpha"    # Landroid/renderscript/Double2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # Landroid/renderscript/Double2;
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .prologue
    .line 2566
    invoke-static/range {p1 .. p1}, validateSide(I)V

    .line 2567
    invoke-static/range {p2 .. p2}, validateUplo(I)V

    .line 2568
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-eq v2, v3, :cond_20

    .line 2569
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Matrix A is not symmetric"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2571
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2572
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x84

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getY()I

    move-result v11

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v12

    const/4 v13, 0x0

    move-object/from16 v0, p3

    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v26

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v8, p1

    move/from16 v9, p2

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 2574
    return-void
.end method

.method public ZSYR2K(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Double2;Landroid/renderscript/Allocation;)V
    .registers 42
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # Landroid/renderscript/Double2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # Landroid/renderscript/Double2;
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .prologue
    .line 2802
    invoke-static/range {p1 .. p1}, validateUplo(I)V

    .line 2803
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, validateSYR2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2804
    const/4 v15, -0x1

    .line 2805
    .local v15, "K":I
    const/16 v4, 0x6f

    move/from16 v0, p2

    if-eq v0, v4, :cond_87

    .line 2806
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v15

    .line 2810
    :goto_25
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x86

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v14

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v28

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v8, p2

    move/from16 v11, p1

    invoke-virtual/range {v4 .. v33}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 2811
    return-void

    .line 2808
    :cond_87
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v15

    goto :goto_25
.end method

.method public ZSYRK(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Double2;Landroid/renderscript/Allocation;)V
    .registers 39
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # Landroid/renderscript/Double2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "beta"    # Landroid/renderscript/Double2;
    .param p6, "C"    # Landroid/renderscript/Allocation;

    .prologue
    .line 2670
    invoke-static/range {p2 .. p2}, validateTranspose(I)V

    .line 2671
    invoke-static/range {p1 .. p1}, validateUplo(I)V

    .line 2672
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    invoke-static/range {v2 .. v8}, validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2673
    const/4 v13, -0x1

    .line 2674
    .local v13, "K":I
    const/16 v2, 0x6f

    move/from16 v0, p2

    if-eq v0, v2, :cond_81

    .line 2675
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v13

    .line 2679
    :goto_29
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x85

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v12

    move-object/from16 v0, p3

    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v26

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 2681
    return-void

    .line 2677
    :cond_81
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v13

    goto :goto_29
.end method

.method public ZTBMV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 40
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I

    .prologue
    .line 782
    if-gez p4, :cond_a

    .line 783
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "K must be greater than or equal to 0"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 785
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 786
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .line 787
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x4a

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v13, p4

    move/from16 v28, p7

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 788
    return-void
.end method

.method public ZTBSV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 40
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I

    .prologue
    .line 1094
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 1095
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .line 1096
    .local v12, "N":I
    if-gez p4, :cond_29

    .line 1097
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Number of diagonals must be positive"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1099
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x4d

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v13, p4

    move/from16 v28, p7

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 1100
    return-void
.end method

.method public ZTPMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 39
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    .line 890
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    move-result v12

    .line 891
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x4b

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v28, p6

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 892
    return-void
.end method

.method public ZTPSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 39
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    .line 1206
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    move-result v12

    .line 1207
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x4e

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v28, p6

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 1208
    return-void
.end method

.method public ZTRMM(IIIILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 42
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # Landroid/renderscript/Double2;
    .param p6, "A"    # Landroid/renderscript/Allocation;
    .param p7, "B"    # Landroid/renderscript/Allocation;

    .prologue
    .line 2926
    invoke-static/range {p2 .. p2}, validateUplo(I)V

    .line 2927
    invoke-static/range {p4 .. p4}, validateDiag(I)V

    .line 2928
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, validateTRMM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2929
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x87

    const/4 v9, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getY()I

    move-result v13

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v8, p3

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p4

    invoke-virtual/range {v4 .. v33}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 2931
    return-void
.end method

.method public ZTRMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 39
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    .line 661
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 662
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .line 663
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x49

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v28, p6

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 664
    return-void
.end method

.method public ZTRSM(IIIILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 42
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # Landroid/renderscript/Double2;
    .param p6, "A"    # Landroid/renderscript/Allocation;
    .param p7, "B"    # Landroid/renderscript/Allocation;

    .prologue
    .line 3048
    invoke-static/range {p2 .. p2}, validateUplo(I)V

    .line 3049
    invoke-static/range {p4 .. p4}, validateDiag(I)V

    .line 3050
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, validateTRSM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 3051
    move-object/from16 v0, p0

    iget-object v4, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x88

    const/4 v9, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getY()I

    move-result v13

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v8, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v8, p3

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p4

    invoke-virtual/range {v4 .. v33}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 3053
    return-void
.end method

.method public ZTRSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 39
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    .line 972
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 973
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .line 974
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x4c

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v6, v0, mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v28, p6

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 976
    return-void
.end method
