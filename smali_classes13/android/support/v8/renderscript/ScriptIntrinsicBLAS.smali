.class public final Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;
.super Landroid/support/v8/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicBLAS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v8/renderscript/ScriptIntrinsicBLAS$Side;,
        Landroid/support/v8/renderscript/ScriptIntrinsicBLAS$Diag;,
        Landroid/support/v8/renderscript/ScriptIntrinsicBLAS$Uplo;,
        Landroid/support/v8/renderscript/ScriptIntrinsicBLAS$Transpose;
    }
.end annotation


# static fields
.field public static final CONJ_TRANSPOSE:I = 0x71

.field private static final INTRINSIC_API_LEVEL:I = 0x17

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
.field private mLUT:Landroid/support/v8/renderscript/Allocation;


# direct methods
.method private constructor <init>(JLandroid/support/v8/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptIntrinsic;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 39
    return-void
.end method

.method public static create(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;
    .locals 8
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 195
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->isUseNative()Z

    move-result v4

    if-eqz v4, :cond_0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v4, v5, :cond_0

    const/4 v2, 0x1

    .line 198
    .local v2, "mUseIncSupp":Z
    :goto_0
    const/16 v4, 0xd

    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/support/v8/renderscript/Element;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v6

    invoke-virtual {p0, v4, v6, v7, v2}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicCreate(IJZ)J

    move-result-wide v0

    .line 199
    .local v0, "id":J
    new-instance v3, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;

    invoke-direct {v3, v0, v1, p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 200
    .local v3, "si":Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;
    invoke-virtual {v3, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->setIncSupp(Z)V

    .line 201
    return-object v3

    .line 195
    .end local v0    # "id":J
    .end local v2    # "mUseIncSupp":Z
    .end local v3    # "si":Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static validateConjTranspose(I)V
    .locals 2
    .param p0, "Trans"    # I

    .prologue
    .line 259
    const/16 v0, 0x6f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x71

    if-eq p0, v0, :cond_0

    .line 261
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Invalid transpose passed to BLAS"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    return-void
.end method

.method static validateDiag(I)V
    .locals 2
    .param p0, "Diag"    # I

    .prologue
    .line 266
    const/16 v0, 0x83

    if-eq p0, v0, :cond_0

    const/16 v0, 0x84

    if-eq p0, v0, :cond_0

    .line 267
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Invalid diag passed to BLAS"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    return-void
.end method

.method static validateGEMV(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;I)V
    .locals 6
    .param p0, "e"    # Landroid/support/v8/renderscript/Element;
    .param p1, "TransA"    # I
    .param p2, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "incY"    # I

    .prologue
    const/4 v5, 0x1

    .line 283
    invoke-static {p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 284
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v0

    .line 285
    .local v0, "M":I
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v1

    .line 286
    .local v1, "N":I
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 287
    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 288
    invoke-virtual {p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 289
    :cond_0
    new-instance v4, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v5, "Called BLAS with wrong Element type"

    invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 291
    :cond_1
    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v4

    if-gt v4, v5, :cond_2

    invoke-virtual {p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v4

    if-le v4, v5, :cond_3

    .line 292
    :cond_2
    new-instance v4, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v5, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 295
    :cond_3
    if-lez p4, :cond_4

    if-gtz p6, :cond_5

    .line 296
    :cond_4
    new-instance v4, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v5, "Vector increments must be greater than 0"

    invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 298
    :cond_5
    const/4 v2, -0x1

    .local v2, "expectedXDim":I
    const/4 v3, -0x1

    .line 299
    .local v3, "expectedYDim":I
    const/16 v4, 0x6f

    if-ne p1, v4, :cond_7

    .line 300
    add-int/lit8 v4, v1, -0x1

    mul-int/2addr v4, p4

    add-int/lit8 v2, v4, 0x1

    .line 301
    add-int/lit8 v4, v0, -0x1

    mul-int/2addr v4, p6

    add-int/lit8 v3, v4, 0x1

    .line 306
    :goto_0
    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v4

    if-ne v4, v2, :cond_6

    .line 307
    invoke-virtual {p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v4

    if-eq v4, v3, :cond_8

    .line 308
    :cond_6
    new-instance v4, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v5, "Incorrect vector dimensions for GEMV"

    invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 303
    :cond_7
    add-int/lit8 v4, v0, -0x1

    mul-int/2addr v4, p4

    add-int/lit8 v2, v4, 0x1

    .line 304
    add-int/lit8 v4, v1, -0x1

    mul-int/2addr v4, p6

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    .line 310
    :cond_8
    return-void
.end method

.method static validateGER(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)V
    .locals 6
    .param p0, "e"    # Landroid/support/v8/renderscript/Element;
    .param p1, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "incX"    # I
    .param p3, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "incY"    # I
    .param p5, "A"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    const/4 v5, 0x1

    .line 1554
    invoke-virtual {p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1555
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1556
    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1557
    :cond_0
    new-instance v4, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v5, "Called BLAS with wrong Element type"

    invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1560
    :cond_1
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v4

    if-gt v4, v5, :cond_2

    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v4

    if-le v4, v5, :cond_3

    .line 1561
    :cond_2
    new-instance v4, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v5, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1564
    :cond_3
    invoke-virtual {p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v0

    .line 1565
    .local v0, "M":I
    invoke-virtual {p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v1

    .line 1567
    .local v1, "N":I
    if-lt v1, v5, :cond_4

    if-ge v0, v5, :cond_5

    .line 1568
    :cond_4
    new-instance v4, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v5, "M and N must be 1 or greater for GER"

    invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1570
    :cond_5
    if-lez p2, :cond_6

    if-gtz p4, :cond_7

    .line 1571
    :cond_6
    new-instance v4, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v5, "Vector increments must be greater than 0"

    invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1573
    :cond_7
    add-int/lit8 v4, v0, -0x1

    mul-int/2addr v4, p2

    add-int/lit8 v2, v4, 0x1

    .line 1574
    .local v2, "expectedXDim":I
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v4

    if-eq v4, v2, :cond_8

    .line 1575
    new-instance v4, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v5, "Incorrect vector dimensions for GER"

    invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1577
    :cond_8
    add-int/lit8 v4, v1, -0x1

    mul-int/2addr v4, p4

    add-int/lit8 v3, v4, 0x1

    .line 1578
    .local v3, "expectedYDim":I
    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v4

    if-eq v4, v3, :cond_9

    .line 1579
    new-instance v4, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v5, "Incorrect vector dimensions for GER"

    invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1583
    :cond_9
    return-void
.end method

.method static validateGERU(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)V
    .locals 6
    .param p0, "e"    # Landroid/support/v8/renderscript/Element;
    .param p1, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "incX"    # I
    .param p3, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "incY"    # I
    .param p5, "A"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    const/4 v5, 0x1

    .line 2230
    invoke-virtual {p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2231
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2232
    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2233
    :cond_0
    new-instance v4, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v5, "Called BLAS with wrong Element type"

    invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2235
    :cond_1
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v4

    if-gt v4, v5, :cond_2

    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v4

    if-le v4, v5, :cond_3

    .line 2236
    :cond_2
    new-instance v4, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v5, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2239
    :cond_3
    invoke-virtual {p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v0

    .line 2240
    .local v0, "M":I
    invoke-virtual {p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v1

    .line 2241
    .local v1, "N":I
    if-lez p2, :cond_4

    if-gtz p4, :cond_5

    .line 2242
    :cond_4
    new-instance v4, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v5, "Vector increments must be greater than 0"

    invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2244
    :cond_5
    add-int/lit8 v4, v0, -0x1

    mul-int/2addr v4, p2

    add-int/lit8 v2, v4, 0x1

    .line 2245
    .local v2, "expectedXDim":I
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v4

    if-eq v4, v2, :cond_6

    .line 2246
    new-instance v4, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v5, "Incorrect vector dimensions for GERU"

    invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2248
    :cond_6
    add-int/lit8 v4, v1, -0x1

    mul-int/2addr v4, p4

    add-int/lit8 v3, v4, 0x1

    .line 2249
    .local v3, "expectedYDim":I
    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v4

    if-eq v4, v3, :cond_7

    .line 2250
    new-instance v4, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v5, "Incorrect vector dimensions for GERU"

    invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2253
    :cond_7
    return-void
.end method

.method static validateHEMM(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 3
    .param p0, "e"    # Landroid/support/v8/renderscript/Element;
    .param p1, "Side"    # I
    .param p2, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "B"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "C"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 3874
    invoke-static {p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 3876
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3877
    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3878
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3879
    :cond_0
    new-instance v1, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v2, "Called BLAS with wrong Element type"

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3883
    :cond_1
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v0

    .line 3884
    .local v0, "adim":I
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 3885
    new-instance v1, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v2, "Called HEMM with non-square A"

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3887
    :cond_2
    const/16 v1, 0x8d

    if-ne p1, v1, :cond_3

    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v1

    if-ne v0, v1, :cond_4

    :cond_3
    const/16 v1, 0x8e

    if-ne p1, v1, :cond_5

    .line 3888
    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 3889
    :cond_4
    new-instance v1, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v2, "Called HEMM with invalid B"

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3891
    :cond_5
    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v1

    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 3892
    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v1

    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v2

    if-eq v1, v2, :cond_7

    .line 3893
    :cond_6
    new-instance v1, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v2, "Called HEMM with mismatched B and C"

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3895
    :cond_7
    return-void
.end method

.method static validateHER2K(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 3
    .param p0, "e"    # Landroid/support/v8/renderscript/Element;
    .param p1, "Trans"    # I
    .param p2, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "B"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "C"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 4049
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4050
    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4051
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4052
    :cond_0
    new-instance v1, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v2, "Called BLAS with wrong Element type"

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4054
    :cond_1
    invoke-static {p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateConjTranspose(I)V

    .line 4055
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v0

    .line 4056
    .local v0, "cdim":I
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 4057
    new-instance v1, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v2, "Called HER2K with non-square C"

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4059
    :cond_2
    const/16 v1, 0x6f

    if-ne p1, v1, :cond_3

    .line 4060
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v1

    if-eq v1, v0, :cond_4

    .line 4061
    new-instance v1, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v2, "Called HER2K with invalid matrices"

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4064
    :cond_3
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v1

    if-eq v1, v0, :cond_4

    .line 4065
    new-instance v1, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v2, "Called HER2K with invalid matrices"

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4068
    :cond_4
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v1

    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v2

    if-ne v1, v2, :cond_5

    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v1

    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 4069
    :cond_5
    new-instance v1, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v2, "Called HER2K with invalid A and B matrices"

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4071
    :cond_6
    return-void
.end method

.method static validateHERK(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 3
    .param p0, "e"    # Landroid/support/v8/renderscript/Element;
    .param p1, "Trans"    # I
    .param p2, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "C"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 3960
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3961
    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3962
    :cond_0
    new-instance v1, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v2, "Called BLAS with wrong Element type"

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3964
    :cond_1
    invoke-static {p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateConjTranspose(I)V

    .line 3965
    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v0

    .line 3966
    .local v0, "cdim":I
    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 3967
    new-instance v1, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v2, "Called HERK with non-square C"

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3969
    :cond_2
    const/16 v1, 0x6f

    if-ne p1, v1, :cond_3

    .line 3970
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 3971
    new-instance v1, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v2, "Called HERK with invalid A"

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3974
    :cond_3
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 3975
    new-instance v1, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v2, "Called HERK with invalid A"

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3978
    :cond_4
    return-void
.end method

.method static validateL3(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 9
    .param p0, "e"    # Landroid/support/v8/renderscript/Element;
    .param p1, "TransA"    # I
    .param p2, "TransB"    # I
    .param p3, "Side"    # I
    .param p4, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "B"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "C"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    const/16 v8, 0x71

    const/16 v7, 0x70

    .line 2863
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

    .line 2864
    .local v5, "cN":I
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    if-eqz p5, :cond_1

    .line 2865
    invoke-virtual {p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    if-eqz p6, :cond_3

    .line 2866
    invoke-virtual {p6}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2867
    :cond_2
    new-instance v6, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v7, "Called BLAS with wrong Element type"

    invoke-direct {v6, v7}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2869
    :cond_3
    if-nez p6, :cond_4

    .line 2871
    new-instance v6, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v7, "Allocation C cannot be null"

    invoke-direct {v6, v7}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2873
    :cond_4
    invoke-virtual {p6}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v4

    .line 2874
    invoke-virtual {p6}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v5

    .line 2876
    const/16 v6, 0x8e

    if-ne p3, v6, :cond_b

    .line 2877
    if-nez p4, :cond_5

    if-nez p5, :cond_6

    :cond_5
    if-eqz p4, :cond_7

    if-nez p5, :cond_7

    .line 2878
    :cond_6
    new-instance v6, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v7, "Provided Matrix A without Matrix B, or vice versa"

    invoke-direct {v6, v7}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2880
    :cond_7
    if-eqz p5, :cond_8

    .line 2881
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v2

    .line 2882
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v3

    .line 2884
    :cond_8
    if-eqz p4, :cond_9

    .line 2885
    invoke-virtual {p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v0

    .line 2886
    invoke-virtual {p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v1

    .line 2908
    :cond_9
    :goto_0
    if-eqz p4, :cond_11

    if-eqz p5, :cond_11

    if-eqz p6, :cond_11

    .line 2909
    if-ne v1, v2, :cond_a

    if-ne v0, v4, :cond_a

    if-eq v3, v5, :cond_14

    .line 2910
    :cond_a
    new-instance v6, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v7, "Called BLAS with invalid dimensions"

    invoke-direct {v6, v7}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2889
    :cond_b
    if-eqz p4, :cond_d

    .line 2890
    if-eq p1, v7, :cond_c

    if-ne p1, v8, :cond_f

    .line 2891
    :cond_c
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v1

    .line 2892
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v0

    .line 2898
    :cond_d
    :goto_1
    if-eqz p5, :cond_9

    .line 2899
    if-eq p2, v7, :cond_e

    if-ne p2, v8, :cond_10

    .line 2900
    :cond_e
    invoke-virtual {p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v3

    .line 2901
    invoke-virtual {p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v2

    goto :goto_0

    .line 2894
    :cond_f
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v0

    .line 2895
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v1

    goto :goto_1

    .line 2903
    :cond_10
    invoke-virtual {p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v2

    .line 2904
    invoke-virtual {p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v3

    goto :goto_0

    .line 2912
    :cond_11
    if-eqz p4, :cond_13

    if-eqz p6, :cond_13

    .line 2914
    if-eq v4, v5, :cond_12

    .line 2915
    new-instance v6, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v7, "Matrix C is not symmetric"

    invoke-direct {v6, v7}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2917
    :cond_12
    if-eq v0, v4, :cond_14

    .line 2918
    new-instance v6, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v7, "Called BLAS with invalid dimensions"

    invoke-direct {v6, v7}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2920
    :cond_13
    if-eqz p4, :cond_14

    if-eqz p5, :cond_14

    .line 2922
    if-eq v1, v2, :cond_14

    .line 2923
    new-instance v6, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v7, "Called BLAS with invalid dimensions"

    invoke-direct {v6, v7}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2927
    :cond_14
    return-void
.end method

.method static validateSPMV(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;I)I
    .locals 8
    .param p0, "e"    # Landroid/support/v8/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "Ap"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "incY"    # I

    .prologue
    const/4 v4, 0x1

    .line 1521
    invoke-static {p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 1522
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1523
    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1524
    invoke-virtual {p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1525
    :cond_0
    new-instance v3, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v4, "Called BLAS with wrong Element type"

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1527
    :cond_1
    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v3

    if-gt v3, v4, :cond_2

    invoke-virtual {p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v3

    if-le v3, v4, :cond_3

    .line 1528
    :cond_2
    new-instance v3, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v4, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1531
    :cond_3
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v3

    if-le v3, v4, :cond_4

    .line 1532
    new-instance v3, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v4, "Ap must have a Y dimension of 0 or 1"

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1535
    :cond_4
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v3

    int-to-double v4, v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 1536
    .local v0, "N":I
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    mul-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    if-eq v3, v4, :cond_5

    .line 1537
    new-instance v3, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v4, "Invalid dimension for Ap"

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1539
    :cond_5
    if-lez p4, :cond_6

    if-gtz p6, :cond_7

    .line 1540
    :cond_6
    new-instance v3, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v4, "Vector increments must be greater than 0"

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1542
    :cond_7
    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v3, p4

    add-int/lit8 v1, v3, 0x1

    .line 1543
    .local v1, "expectedXDim":I
    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v3

    if-eq v3, v1, :cond_8

    .line 1544
    new-instance v3, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v4, "Incorrect vector dimensions for SPMV"

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1546
    :cond_8
    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v3, p6

    add-int/lit8 v2, v3, 0x1

    .line 1547
    .local v2, "expectedYDim":I
    invoke-virtual {p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v3

    if-eq v3, v2, :cond_9

    .line 1548
    new-instance v3, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v4, "Incorrect vector dimensions for SPMV"

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1551
    :cond_9
    return v0
.end method

.method static validateSPR(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)I
    .locals 6
    .param p0, "e"    # Landroid/support/v8/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Ap"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    const/4 v3, 0x1

    .line 1609
    invoke-static {p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 1610
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1611
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1612
    :cond_0
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "Called BLAS with wrong Element type"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1614
    :cond_1
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v2

    if-le v2, v3, :cond_2

    .line 1615
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1618
    :cond_2
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v2

    if-le v2, v3, :cond_3

    .line 1619
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "Ap must have a Y dimension of 0 or 1"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1622
    :cond_3
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 1623
    .local v0, "N":I
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    mul-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    if-eq v2, v3, :cond_4

    .line 1624
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "Invalid dimension for Ap"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1626
    :cond_4
    if-gtz p3, :cond_5

    .line 1627
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "Vector increments must be greater than 0"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1629
    :cond_5
    add-int/lit8 v2, v0, -0x1

    mul-int/2addr v2, p3

    add-int/lit8 v1, v2, 0x1

    .line 1630
    .local v1, "expectedXDim":I
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v2

    if-eq v2, v1, :cond_6

    .line 1631
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "Incorrect vector dimensions for SPR"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1634
    :cond_6
    return v0
.end method

.method static validateSPR2(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)I
    .locals 8
    .param p0, "e"    # Landroid/support/v8/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "Ap"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    const/4 v4, 0x1

    .line 1666
    invoke-static {p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 1667
    invoke-virtual {p6}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1668
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1669
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1670
    :cond_0
    new-instance v3, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v4, "Called BLAS with wrong Element type"

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1672
    :cond_1
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v3

    if-gt v3, v4, :cond_2

    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v3

    if-le v3, v4, :cond_3

    .line 1673
    :cond_2
    new-instance v3, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v4, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1676
    :cond_3
    invoke-virtual {p6}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v3

    if-le v3, v4, :cond_4

    .line 1677
    new-instance v3, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v4, "Ap must have a Y dimension of 0 or 1"

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1680
    :cond_4
    invoke-virtual {p6}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v3

    int-to-double v4, v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 1681
    .local v0, "N":I
    invoke-virtual {p6}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    mul-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    if-eq v3, v4, :cond_5

    .line 1682
    new-instance v3, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v4, "Invalid dimension for Ap"

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1684
    :cond_5
    if-lez p3, :cond_6

    if-gtz p5, :cond_7

    .line 1685
    :cond_6
    new-instance v3, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v4, "Vector increments must be greater than 0"

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1687
    :cond_7
    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v3, p3

    add-int/lit8 v1, v3, 0x1

    .line 1688
    .local v1, "expectedXDim":I
    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v3, p5

    add-int/lit8 v2, v3, 0x1

    .line 1689
    .local v2, "expectedYDim":I
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v3

    if-ne v3, v1, :cond_8

    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v3

    if-eq v3, v2, :cond_9

    .line 1690
    :cond_8
    new-instance v3, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v4, "Incorrect vector dimensions for SPR2"

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1693
    :cond_9
    return v0
.end method

.method static validateSYMV(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;II)I
    .locals 5
    .param p0, "e"    # Landroid/support/v8/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "incY"    # I

    .prologue
    const/4 v4, 0x1

    .line 1493
    invoke-static {p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 1494
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v0

    .line 1495
    .local v0, "N":I
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v3

    if-eq v3, v0, :cond_0

    .line 1496
    new-instance v3, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v4, "A must be a square matrix for SYMV"

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1498
    :cond_0
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1499
    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1500
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1501
    :cond_1
    new-instance v3, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v4, "Called BLAS with wrong Element type"

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1503
    :cond_2
    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v3

    if-gt v3, v4, :cond_3

    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v3

    if-le v3, v4, :cond_4

    .line 1504
    :cond_3
    new-instance v3, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v4, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1507
    :cond_4
    if-lez p5, :cond_5

    if-gtz p6, :cond_6

    .line 1508
    :cond_5
    new-instance v3, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v4, "Vector increments must be greater than 0"

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1510
    :cond_6
    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v3, p5

    add-int/lit8 v1, v3, 0x1

    .line 1511
    .local v1, "expectedXDim":I
    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v3

    if-eq v3, v1, :cond_7

    .line 1512
    new-instance v3, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v4, "Incorrect vector dimensions for SYMV"

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1514
    :cond_7
    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v3, p6

    add-int/lit8 v2, v3, 0x1

    .line 1515
    .local v2, "expectedYDim":I
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v3

    if-eq v3, v2, :cond_8

    .line 1516
    new-instance v3, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v4, "Incorrect vector dimensions for SYMV"

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1518
    :cond_8
    return v0
.end method

.method static validateSYR(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)I
    .locals 4
    .param p0, "e"    # Landroid/support/v8/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "A"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 1585
    invoke-static {p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 1586
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1587
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1588
    :cond_0
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "Called BLAS with wrong Element type"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1591
    :cond_1
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v0

    .line 1593
    .local v0, "N":I
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 1594
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1596
    :cond_2
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 1597
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "A must be a symmetric matrix"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1599
    :cond_3
    if-gtz p3, :cond_4

    .line 1600
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "Vector increments must be greater than 0"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1602
    :cond_4
    add-int/lit8 v2, v0, -0x1

    mul-int/2addr v2, p3

    add-int/lit8 v1, v2, 0x1

    .line 1603
    .local v1, "expectedXDim":I
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v2

    if-eq v2, v1, :cond_5

    .line 1604
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "Incorrect vector dimensions for SYR"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1606
    :cond_5
    return v0
.end method

.method static validateSYR2(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)I
    .locals 5
    .param p0, "e"    # Landroid/support/v8/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "A"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    const/4 v4, 0x1

    .line 1638
    invoke-static {p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 1639
    invoke-virtual {p6}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1640
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1641
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1642
    :cond_0
    new-instance v3, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v4, "Called BLAS with wrong Element type"

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1645
    :cond_1
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v3

    if-gt v3, v4, :cond_2

    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v3

    if-le v3, v4, :cond_3

    .line 1646
    :cond_2
    new-instance v3, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v4, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1649
    :cond_3
    invoke-virtual {p6}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v0

    .line 1651
    .local v0, "N":I
    invoke-virtual {p6}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v3

    if-eq v0, v3, :cond_4

    .line 1652
    new-instance v3, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v4, "A must be a symmetric matrix"

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1654
    :cond_4
    if-lez p3, :cond_5

    if-gtz p5, :cond_6

    .line 1655
    :cond_5
    new-instance v3, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v4, "Vector increments must be greater than 0"

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1657
    :cond_6
    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v3, p3

    add-int/lit8 v1, v3, 0x1

    .line 1658
    .local v1, "expectedXDim":I
    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v3, p5

    add-int/lit8 v2, v3, 0x1

    .line 1659
    .local v2, "expectedYDim":I
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v3

    if-ne v3, v1, :cond_7

    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v3

    if-eq v3, v2, :cond_8

    .line 1660
    :cond_7
    new-instance v3, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v4, "Incorrect vector dimensions for SYR"

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1662
    :cond_8
    return v0
.end method

.method static validateSYR2K(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 3
    .param p0, "e"    # Landroid/support/v8/renderscript/Element;
    .param p1, "Trans"    # I
    .param p2, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "B"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "C"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 3398
    invoke-static {p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 3399
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3400
    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3401
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3402
    :cond_0
    new-instance v1, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v2, "Called BLAS with wrong Element type"

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3404
    :cond_1
    const/4 v0, -0x1

    .line 3407
    .local v0, "Cdim":I
    const/16 v1, 0x70

    if-ne p1, v1, :cond_3

    .line 3409
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v0

    .line 3414
    :goto_0
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v1

    if-eq v1, v0, :cond_4

    .line 3415
    :cond_2
    new-instance v1, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v2, "Invalid symmetric matrix in SYR2K"

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3412
    :cond_3
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v0

    goto :goto_0

    .line 3418
    :cond_4
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v1

    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v2

    if-ne v1, v2, :cond_5

    invoke-virtual {p2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v1

    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 3419
    :cond_5
    new-instance v1, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v2, "Invalid A and B in SYR2K"

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3421
    :cond_6
    return-void
.end method

.method static validateSide(I)V
    .locals 2
    .param p0, "Side"    # I

    .prologue
    .line 246
    const/16 v0, 0x8d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8e

    if-eq p0, v0, :cond_0

    .line 247
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Invalid side passed to BLAS"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    return-void
.end method

.method static validateTPMV(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)I
    .locals 6
    .param p0, "e"    # Landroid/support/v8/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    const/4 v3, 0x1

    .line 646
    invoke-static {p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 647
    invoke-static {p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 648
    invoke-static {p3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 649
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 650
    invoke-virtual {p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 651
    :cond_0
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "Called BLAS with wrong Element type"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 653
    :cond_1
    invoke-virtual {p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v2

    if-le v2, v3, :cond_2

    .line 654
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 657
    :cond_2
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v2

    if-le v2, v3, :cond_3

    .line 658
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "Ap must have a Y dimension of 0 or 1"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 661
    :cond_3
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 663
    .local v0, "N":I
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    mul-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    if-eq v2, v3, :cond_4

    .line 664
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "Invalid dimension for Ap"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 666
    :cond_4
    if-gtz p6, :cond_5

    .line 667
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "Vector increments must be greater than 0"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 669
    :cond_5
    add-int/lit8 v2, v0, -0x1

    mul-int/2addr v2, p6

    add-int/lit8 v1, v2, 0x1

    .line 670
    .local v1, "expectedXDim":I
    invoke-virtual {p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v2

    if-eq v2, v1, :cond_6

    .line 671
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "Incorrect vector dimensions for TPMV"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 674
    :cond_6
    return v0
.end method

.method static validateTRMM(Landroid/support/v8/renderscript/Element;IILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 6
    .param p0, "e"    # Landroid/support/v8/renderscript/Element;
    .param p1, "Side"    # I
    .param p2, "TransA"    # I
    .param p3, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "B"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 3568
    invoke-static {p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 3569
    invoke-static {p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 3570
    const/4 v0, -0x1

    .local v0, "aM":I
    const/4 v1, -0x1

    .local v1, "aN":I
    const/4 v2, -0x1

    .local v2, "bM":I
    const/4 v3, -0x1

    .line 3571
    .local v3, "bN":I
    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3572
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3573
    :cond_0
    new-instance v4, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v5, "Called BLAS with wrong Element type"

    invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3576
    :cond_1
    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v0

    .line 3577
    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v1

    .line 3578
    if-eq v0, v1, :cond_2

    .line 3579
    new-instance v4, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v5, "Called TRMM with a non-symmetric matrix A"

    invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3582
    :cond_2
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v2

    .line 3583
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v3

    .line 3584
    const/16 v4, 0x8d

    if-ne p1, v4, :cond_3

    .line 3585
    if-eq v1, v2, :cond_4

    .line 3586
    new-instance v4, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v5, "Called TRMM with invalid matrices"

    invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3589
    :cond_3
    if-eq v3, v0, :cond_4

    .line 3590
    new-instance v4, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v5, "Called TRMM with invalid matrices"

    invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3593
    :cond_4
    return-void
.end method

.method static validateTRMV(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 4
    .param p0, "e"    # Landroid/support/v8/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    .line 621
    invoke-static {p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 622
    invoke-static {p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 623
    invoke-static {p3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 624
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v0

    .line 625
    .local v0, "N":I
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 626
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "A must be a square matrix for TRMV"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 628
    :cond_0
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 629
    invoke-virtual {p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 630
    :cond_1
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "Called BLAS with wrong Element type"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 632
    :cond_2
    invoke-virtual {p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 633
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 636
    :cond_3
    if-gtz p6, :cond_4

    .line 637
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "Vector increments must be greater than 0"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 639
    :cond_4
    add-int/lit8 v2, v0, -0x1

    mul-int/2addr v2, p6

    add-int/lit8 v1, v2, 0x1

    .line 640
    .local v1, "expectedXDim":I
    invoke-virtual {p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v2

    if-eq v2, v1, :cond_5

    .line 641
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "Incorrect vector dimensions for TRMV"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 643
    :cond_5
    return-void
.end method

.method static validateTRSM(Landroid/support/v8/renderscript/Element;IILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 5
    .param p0, "e"    # Landroid/support/v8/renderscript/Element;
    .param p1, "Side"    # I
    .param p2, "TransA"    # I
    .param p3, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "B"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 3720
    const/4 v0, -0x1

    .local v0, "adim":I
    const/4 v1, -0x1

    .local v1, "bM":I
    const/4 v2, -0x1

    .line 3721
    .local v2, "bN":I
    invoke-static {p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 3722
    invoke-static {p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 3723
    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3724
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3725
    :cond_0
    new-instance v3, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v4, "Called BLAS with wrong Element type"

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3727
    :cond_1
    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v0

    .line 3728
    invoke-virtual {p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v3

    if-eq v0, v3, :cond_2

    .line 3732
    new-instance v3, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v4, "Called TRSM with a non-symmetric matrix A"

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3734
    :cond_2
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v1

    .line 3735
    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v2

    .line 3736
    const/16 v3, 0x8d

    if-ne p1, v3, :cond_3

    .line 3738
    if-eq v0, v1, :cond_4

    .line 3739
    new-instance v3, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v4, "Called TRSM with invalid matrix dimensions"

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3743
    :cond_3
    if-eq v0, v2, :cond_4

    .line 3744
    new-instance v3, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v4, "Called TRSM with invalid matrix dimensions"

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3747
    :cond_4
    return-void
.end method

.method static validateTranspose(I)V
    .locals 2
    .param p0, "Trans"    # I

    .prologue
    .line 252
    const/16 v0, 0x6f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x70

    if-eq p0, v0, :cond_0

    const/16 v0, 0x71

    if-eq p0, v0, :cond_0

    .line 254
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Invalid transpose passed to BLAS"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    return-void
.end method

.method static validateUplo(I)V
    .locals 2
    .param p0, "Uplo"    # I

    .prologue
    .line 272
    const/16 v0, 0x79

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7a

    if-eq p0, v0, :cond_0

    .line 273
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v1, "Invalid uplo passed to BLAS"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_0
    return-void
.end method


# virtual methods
.method public BNNM(Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;II)V
    .locals 19
    .param p1, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "a_offset"    # I
    .param p3, "B"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "b_offset"    # I
    .param p5, "C"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "c_offset"    # I
    .param p7, "c_mult"    # I

    .prologue
    .line 4164
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->U8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    const/16 v3, 0x6f

    const/16 v4, 0x70

    const/4 v5, 0x0

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 4166
    if-ltz p2, :cond_0

    const/16 v2, 0xff

    move/from16 v0, p2

    if-le v0, v2, :cond_1

    .line 4167
    :cond_0
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "Invalid a_offset passed to BNNM"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4169
    :cond_1
    if-ltz p4, :cond_2

    const/16 v2, 0xff

    move/from16 v0, p4

    if-le v0, v2, :cond_3

    .line 4170
    :cond_2
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "Invalid b_offset passed to BNNM"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4172
    :cond_3
    const/4 v5, -0x1

    .local v5, "M":I
    const/4 v6, -0x1

    .local v6, "N":I
    const/4 v7, -0x1

    .line 4173
    .local v7, "K":I
    invoke-virtual/range {p1 .. p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v5

    .line 4174
    invoke-virtual/range {p3 .. p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v6

    .line 4175
    invoke-virtual/range {p1 .. p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v7

    .line 4177
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v18

    .line 4178
    .local v18, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v8

    .line 4179
    .local v8, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v11

    .line 4180
    .local v11, "bID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v14

    .line 4181
    .local v14, "cID":J
    if-eqz v18, :cond_4

    .line 4182
    invoke-virtual/range {p0 .. p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v8

    .line 4183
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v11

    .line 4184
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v14

    .line 4186
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    move/from16 v10, p2

    move/from16 v13, p4

    move/from16 v16, p6

    move/from16 v17, p7

    invoke-virtual/range {v2 .. v18}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_BNNM(JIIIJIJIJIIZ)V

    .line 4188
    return-void
.end method

.method public CGBMV(IIILandroid/support/v8/renderscript/Float2;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Float2;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 29
    .param p1, "TransA"    # I
    .param p2, "KL"    # I
    .param p3, "KU"    # I
    .param p4, "alpha"    # Landroid/support/v8/renderscript/Float2;
    .param p5, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p7, "incX"    # I
    .param p8, "beta"    # Landroid/support/v8/renderscript/Float2;
    .param p9, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p10, "incY"    # I

    .prologue
    .line 556
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p9

    move/from16 v8, p10

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;I)V

    .line 557
    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 558
    :cond_0
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "KL and KU must be greater than or equal to 0"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 560
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v11

    .line 561
    .local v11, "M":I
    invoke-virtual/range {p5 .. p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v12

    .line 563
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 564
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 565
    .local v16, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 566
    .local v18, "xID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v22

    .line 567
    .local v22, "yID":J
    if-eqz v28, :cond_2

    .line 568
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 569
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 570
    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v22

    .line 572
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x40

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p4

    iget v14, v0, Landroid/support/v8/renderscript/Float2;->x:F

    move-object/from16 v0, p4

    iget v15, v0, Landroid/support/v8/renderscript/Float2;->y:F

    move-object/from16 v0, p8

    iget v0, v0, Landroid/support/v8/renderscript/Float2;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p8

    iget v0, v0, Landroid/support/v8/renderscript/Float2;->y:F

    move/from16 v21, v0

    move/from16 v6, p1

    move/from16 v24, p7

    move/from16 v25, p10

    move/from16 v26, p2

    move/from16 v27, p3

    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 573
    return-void
.end method

.method public CGEMM(IILandroid/support/v8/renderscript/Float2;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Float2;Landroid/support/v8/renderscript/Allocation;)V
    .locals 29
    .param p1, "TransA"    # I
    .param p2, "TransB"    # I
    .param p3, "alpha"    # Landroid/support/v8/renderscript/Float2;
    .param p4, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "B"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "beta"    # Landroid/support/v8/renderscript/Float2;
    .param p7, "C"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 3038
    invoke-static/range {p1 .. p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 3039
    invoke-static/range {p2 .. p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 3040
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    const/4 v5, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 3041
    const/4 v11, -0x1

    .local v11, "M":I
    const/4 v12, -0x1

    .local v12, "N":I
    const/4 v13, -0x1

    .line 3042
    .local v13, "K":I
    const/16 v2, 0x6f

    move/from16 v0, p1

    if-eq v0, v2, :cond_1

    .line 3043
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v11

    .line 3044
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v13

    .line 3049
    :goto_0
    const/16 v2, 0x6f

    move/from16 v0, p2

    if-eq v0, v2, :cond_2

    .line 3050
    invoke-virtual/range {p5 .. p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v12

    .line 3055
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 3056
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 3057
    .local v16, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 3058
    .local v18, "bID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v22

    .line 3059
    .local v22, "cID":J
    if-eqz v28, :cond_0

    .line 3060
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 3061
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 3062
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v22

    .line 3064
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x7d

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p3

    iget v14, v0, Landroid/support/v8/renderscript/Float2;->x:F

    move-object/from16 v0, p3

    iget v15, v0, Landroid/support/v8/renderscript/Float2;->y:F

    move-object/from16 v0, p6

    iget v0, v0, Landroid/support/v8/renderscript/Float2;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p6

    iget v0, v0, Landroid/support/v8/renderscript/Float2;->y:F

    move/from16 v21, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 3066
    return-void

    .line 3046
    .end local v16    # "aID":J
    .end local v18    # "bID":J
    .end local v22    # "cID":J
    .end local v28    # "mUseIncSupp":Z
    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v11

    .line 3047
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v13

    goto/16 :goto_0

    .line 3052
    :cond_2
    invoke-virtual/range {p5 .. p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v12

    goto/16 :goto_1
.end method

.method public CGEMV(ILandroid/support/v8/renderscript/Float2;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Float2;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 29
    .param p1, "TransA"    # I
    .param p2, "alpha"    # Landroid/support/v8/renderscript/Float2;
    .param p3, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # Landroid/support/v8/renderscript/Float2;
    .param p7, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p8, "incY"    # I

    .prologue
    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;I)V

    .line 393
    invoke-virtual/range {p3 .. p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v11

    .line 394
    .local v11, "M":I
    invoke-virtual/range {p3 .. p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v12

    .line 396
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 397
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 398
    .local v16, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 399
    .local v18, "xID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v22

    .line 400
    .local v22, "yID":J
    if-eqz v28, :cond_0

    .line 401
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 402
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 403
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v22

    .line 405
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x3f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget v14, v0, Landroid/support/v8/renderscript/Float2;->x:F

    move-object/from16 v0, p2

    iget v15, v0, Landroid/support/v8/renderscript/Float2;->y:F

    move-object/from16 v0, p6

    iget v0, v0, Landroid/support/v8/renderscript/Float2;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p6

    iget v0, v0, Landroid/support/v8/renderscript/Float2;->y:F

    move/from16 v21, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p1

    move/from16 v24, p5

    move/from16 v25, p8

    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 406
    return-void
.end method

.method public CGERC(Landroid/support/v8/renderscript/Float2;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)V
    .locals 29
    .param p1, "alpha"    # Landroid/support/v8/renderscript/Float2;
    .param p2, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "A"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 2412
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateGERU(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)V

    .line 2413
    invoke-virtual/range {p6 .. p6}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v11

    .line 2414
    .local v11, "M":I
    invoke-virtual/range {p6 .. p6}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v12

    .line 2416
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 2417
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v22

    .line 2418
    .local v22, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 2419
    .local v16, "xID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 2420
    .local v18, "yID":J
    if-eqz v28, :cond_0

    .line 2421
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v22

    .line 2422
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 2423
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 2425
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x63

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/v8/renderscript/Float2;->x:F

    move-object/from16 v0, p1

    iget v15, v0, Landroid/support/v8/renderscript/Float2;->y:F

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v24, p3

    move/from16 v25, p5

    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 2426
    return-void
.end method

.method public CGERU(Landroid/support/v8/renderscript/Float2;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)V
    .locals 29
    .param p1, "alpha"    # Landroid/support/v8/renderscript/Float2;
    .param p2, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "A"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 2381
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateGERU(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)V

    .line 2382
    invoke-virtual/range {p6 .. p6}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v11

    .line 2383
    .local v11, "M":I
    invoke-virtual/range {p6 .. p6}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v12

    .line 2385
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 2386
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v22

    .line 2387
    .local v22, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 2388
    .local v16, "xID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 2389
    .local v18, "yID":J
    if-eqz v28, :cond_0

    .line 2390
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v22

    .line 2391
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 2392
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 2394
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x62

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/v8/renderscript/Float2;->x:F

    move-object/from16 v0, p1

    iget v15, v0, Landroid/support/v8/renderscript/Float2;->y:F

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v24, p3

    move/from16 v25, p5

    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 2395
    return-void
.end method

.method public CHBMV(IILandroid/support/v8/renderscript/Float2;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Float2;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 29
    .param p1, "Uplo"    # I
    .param p2, "K"    # I
    .param p3, "alpha"    # Landroid/support/v8/renderscript/Float2;
    .param p4, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "incX"    # I
    .param p7, "beta"    # Landroid/support/v8/renderscript/Float2;
    .param p8, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p9, "incY"    # I

    .prologue
    .line 2311
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p4

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)I

    move-result v12

    .line 2312
    .local v12, "N":I
    if-gez p2, :cond_0

    .line 2313
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "K must be 0 or greater for HBMV"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2316
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 2317
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 2318
    .local v16, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 2319
    .local v18, "xID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v22

    .line 2320
    .local v22, "yID":J
    if-eqz v28, :cond_1

    .line 2321
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 2322
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 2323
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v22

    .line 2325
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x60

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p3

    iget v14, v0, Landroid/support/v8/renderscript/Float2;->x:F

    move-object/from16 v0, p3

    iget v15, v0, Landroid/support/v8/renderscript/Float2;->y:F

    move-object/from16 v0, p7

    iget v0, v0, Landroid/support/v8/renderscript/Float2;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p7

    iget v0, v0, Landroid/support/v8/renderscript/Float2;->y:F

    move/from16 v21, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, p1

    move/from16 v13, p2

    move/from16 v24, p6

    move/from16 v25, p9

    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 2326
    return-void
.end method

.method public CHEMM(IILandroid/support/v8/renderscript/Float2;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Float2;Landroid/support/v8/renderscript/Allocation;)V
    .locals 31
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "alpha"    # Landroid/support/v8/renderscript/Float2;
    .param p4, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "B"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "beta"    # Landroid/support/v8/renderscript/Float2;
    .param p7, "C"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 3912
    invoke-static/range {p2 .. p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3913
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v4}, Landroid/support/v8/renderscript/Element;->F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateHEMM(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 3915
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v30

    .line 3916
    .local v30, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 3917
    .local v18, "aID":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 3918
    .local v20, "bID":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v24

    .line 3919
    .local v24, "cID":J
    if-eqz v30, :cond_0

    .line 3920
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 3921
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 3922
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v24

    .line 3924
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x89

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v13

    invoke-virtual/range {p7 .. p7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/support/v8/renderscript/Float2;->x:F

    move/from16 v16, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/support/v8/renderscript/Float2;->y:F

    move/from16 v17, v0

    move-object/from16 v0, p6

    iget v0, v0, Landroid/support/v8/renderscript/Float2;->x:F

    move/from16 v22, v0

    move-object/from16 v0, p6

    iget v0, v0, Landroid/support/v8/renderscript/Float2;->y:F

    move/from16 v23, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v10, p1

    move/from16 v11, p2

    invoke-virtual/range {v4 .. v30}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 3926
    return-void
.end method

.method public CHEMV(ILandroid/support/v8/renderscript/Float2;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Float2;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 29
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/support/v8/renderscript/Float2;
    .param p3, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # Landroid/support/v8/renderscript/Float2;
    .param p7, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p8, "incY"    # I

    .prologue
    .line 2272
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)I

    move-result v12

    .line 2274
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 2275
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 2276
    .local v16, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 2277
    .local v18, "xID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v22

    .line 2278
    .local v22, "yID":J
    if-eqz v28, :cond_0

    .line 2279
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 2280
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 2281
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v22

    .line 2283
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x5f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget v14, v0, Landroid/support/v8/renderscript/Float2;->x:F

    move-object/from16 v0, p2

    iget v15, v0, Landroid/support/v8/renderscript/Float2;->y:F

    move-object/from16 v0, p6

    iget v0, v0, Landroid/support/v8/renderscript/Float2;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p6

    iget v0, v0, Landroid/support/v8/renderscript/Float2;->y:F

    move/from16 v21, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, p1

    move/from16 v24, p5

    move/from16 v25, p8

    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 2284
    return-void
.end method

.method public CHER(IFLandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)V
    .locals 31
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "A"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 2442
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v4}, Landroid/support/v8/renderscript/Element;->F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {v4, v0, v1, v2, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSYR(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)I

    move-result v14

    .line 2444
    .local v14, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v30

    .line 2445
    .local v30, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v24

    .line 2446
    .local v24, "aID":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 2447
    .local v18, "xID":J
    if-eqz v30, :cond_0

    .line 2448
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v24

    .line 2449
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 2451
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x64

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v11, p1

    move/from16 v16, p2

    move/from16 v26, p4

    invoke-virtual/range {v4 .. v30}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 2452
    return-void
.end method

.method public CHER2(ILandroid/support/v8/renderscript/Float2;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)V
    .locals 29
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/support/v8/renderscript/Float2;
    .param p3, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "A"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 2504
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)I

    move-result v12

    .line 2506
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 2507
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v22

    .line 2508
    .local v22, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 2509
    .local v16, "xID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 2510
    .local v18, "yID":J
    if-eqz v28, :cond_0

    .line 2511
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v22

    .line 2512
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 2513
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 2515
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x66

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget v14, v0, Landroid/support/v8/renderscript/Float2;->x:F

    move-object/from16 v0, p2

    iget v15, v0, Landroid/support/v8/renderscript/Float2;->y:F

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, p1

    move/from16 v24, p4

    move/from16 v25, p6

    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 2516
    return-void
.end method

.method public CHER2K(IILandroid/support/v8/renderscript/Float2;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;FLandroid/support/v8/renderscript/Allocation;)V
    .locals 34
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # Landroid/support/v8/renderscript/Float2;
    .param p4, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "B"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "beta"    # F
    .param p7, "C"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 4088
    invoke-static/range {p1 .. p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 4089
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v4}, Landroid/support/v8/renderscript/Element;->F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    move/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateHER2K(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 4090
    const/4 v15, 0x0

    .line 4091
    .local v15, "k":I
    const/16 v4, 0x6f

    move/from16 v0, p2

    if-ne v0, v4, :cond_1

    .line 4092
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v15

    .line 4097
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v30

    .line 4098
    .local v30, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v32

    .line 4099
    .local v32, "aID":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 4100
    .local v20, "bID":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v24

    .line 4101
    .local v24, "cID":J
    if-eqz v30, :cond_0

    .line 4102
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v32

    .line 4103
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 4104
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v24

    .line 4106
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x8b

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v14

    move-object/from16 v0, p3

    iget v0, v0, Landroid/support/v8/renderscript/Float2;->x:F

    move/from16 v16, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/support/v8/renderscript/Float2;->y:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    .line 4107
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v8, p2

    move/from16 v11, p1

    move/from16 v22, p6

    .line 4106
    invoke-virtual/range {v4 .. v30}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 4108
    return-void

    .line 4094
    .end local v20    # "bID":J
    .end local v24    # "cID":J
    .end local v30    # "mUseIncSupp":Z
    .end local v32    # "aID":J
    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v15

    goto/16 :goto_0
.end method

.method public CHERK(IIFLandroid/support/v8/renderscript/Allocation;FLandroid/support/v8/renderscript/Allocation;)V
    .locals 31
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # F
    .param p4, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "beta"    # F
    .param p6, "C"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 3994
    invoke-static/range {p1 .. p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3995
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v4}, Landroid/support/v8/renderscript/Element;->F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    move/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    invoke-static {v4, v0, v1, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateHERK(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 3996
    const/4 v15, 0x0

    .line 3997
    .local v15, "k":I
    const/16 v4, 0x71

    move/from16 v0, p2

    if-ne v0, v4, :cond_1

    .line 3998
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v15

    .line 4003
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v30

    .line 4004
    .local v30, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 4005
    .local v18, "aID":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v24

    .line 4006
    .local v24, "cID":J
    if-eqz v30, :cond_0

    .line 4007
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 4008
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v24

    .line 4010
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x8a

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p6 .. p6}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v14

    const/16 v17, 0x0

    const-wide/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v8, p2

    move/from16 v11, p1

    move/from16 v16, p3

    move/from16 v22, p5

    invoke-virtual/range {v4 .. v30}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 4012
    return-void

    .line 4000
    .end local v18    # "aID":J
    .end local v24    # "cID":J
    .end local v30    # "mUseIncSupp":Z
    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v15

    goto :goto_0
.end method

.method public CHPMV(ILandroid/support/v8/renderscript/Float2;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Float2;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 29
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/support/v8/renderscript/Float2;
    .param p3, "Ap"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # Landroid/support/v8/renderscript/Float2;
    .param p7, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p8, "incY"    # I

    .prologue
    .line 2353
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)I

    move-result v12

    .line 2355
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 2356
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 2357
    .local v16, "apID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 2358
    .local v18, "xID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v22

    .line 2359
    .local v22, "yID":J
    if-eqz v28, :cond_0

    .line 2360
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 2361
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 2362
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v22

    .line 2364
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x61

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget v14, v0, Landroid/support/v8/renderscript/Float2;->x:F

    move-object/from16 v0, p2

    iget v15, v0, Landroid/support/v8/renderscript/Float2;->y:F

    move-object/from16 v0, p6

    iget v0, v0, Landroid/support/v8/renderscript/Float2;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p6

    iget v0, v0, Landroid/support/v8/renderscript/Float2;->y:F

    move/from16 v21, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, p1

    move/from16 v24, p5

    move/from16 v25, p8

    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 2365
    return-void
.end method

.method public CHPR(IFLandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)V
    .locals 31
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Ap"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 2476
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v4}, Landroid/support/v8/renderscript/Element;->F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {v4, v0, v1, v2, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSPR(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)I

    move-result v14

    .line 2478
    .local v14, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v30

    .line 2479
    .local v30, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v24

    .line 2480
    .local v24, "apID":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 2481
    .local v18, "xID":J
    if-eqz v30, :cond_0

    .line 2482
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v24

    .line 2483
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 2485
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x65

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v11, p1

    move/from16 v16, p2

    move/from16 v26, p4

    invoke-virtual/range {v4 .. v30}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 2486
    return-void
.end method

.method public CHPR2(ILandroid/support/v8/renderscript/Float2;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)V
    .locals 29
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/support/v8/renderscript/Float2;
    .param p3, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "Ap"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 2542
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)I

    move-result v12

    .line 2544
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 2545
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v22

    .line 2546
    .local v22, "apID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 2547
    .local v16, "xID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 2548
    .local v18, "yID":J
    if-eqz v28, :cond_0

    .line 2549
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v22

    .line 2550
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 2551
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 2553
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x67

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget v14, v0, Landroid/support/v8/renderscript/Float2;->x:F

    move-object/from16 v0, p2

    iget v15, v0, Landroid/support/v8/renderscript/Float2;->y:F

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, p1

    move/from16 v24, p4

    move/from16 v25, p6

    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 2554
    return-void
.end method

.method public CSYMM(IILandroid/support/v8/renderscript/Float2;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Float2;Landroid/support/v8/renderscript/Allocation;)V
    .locals 29
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "alpha"    # Landroid/support/v8/renderscript/Float2;
    .param p4, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "B"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "beta"    # Landroid/support/v8/renderscript/Float2;
    .param p7, "C"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 3203
    invoke-static/range {p1 .. p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 3204
    invoke-static/range {p2 .. p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3205
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 3206
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "Matrix A is not symmetric"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3208
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 3210
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 3211
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 3212
    .local v16, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 3213
    .local v18, "bID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v22

    .line 3214
    .local v22, "cID":J
    if-eqz v28, :cond_1

    .line 3215
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 3216
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 3217
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v22

    .line 3219
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x7e

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v11

    invoke-virtual/range {p7 .. p7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v12

    const/4 v13, 0x0

    move-object/from16 v0, p3

    iget v14, v0, Landroid/support/v8/renderscript/Float2;->x:F

    move-object/from16 v0, p3

    iget v15, v0, Landroid/support/v8/renderscript/Float2;->y:F

    move-object/from16 v0, p6

    iget v0, v0, Landroid/support/v8/renderscript/Float2;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p6

    iget v0, v0, Landroid/support/v8/renderscript/Float2;->y:F

    move/from16 v21, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v8, p1

    move/from16 v9, p2

    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 3221
    return-void
.end method

.method public CSYR2K(IILandroid/support/v8/renderscript/Float2;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Float2;Landroid/support/v8/renderscript/Allocation;)V
    .locals 31
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # Landroid/support/v8/renderscript/Float2;
    .param p4, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "B"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "beta"    # Landroid/support/v8/renderscript/Float2;
    .param p7, "C"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 3510
    invoke-static/range {p1 .. p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3511
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v4}, Landroid/support/v8/renderscript/Element;->F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    move/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSYR2K(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 3512
    const/4 v15, -0x1

    .line 3513
    .local v15, "K":I
    const/16 v4, 0x6f

    move/from16 v0, p2

    if-eq v0, v4, :cond_1

    .line 3514
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v15

    .line 3519
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v30

    .line 3520
    .local v30, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 3521
    .local v18, "aID":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 3522
    .local v20, "bID":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v24

    .line 3523
    .local v24, "cID":J
    if-eqz v30, :cond_0

    .line 3524
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 3525
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 3526
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v24

    .line 3528
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x80

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v14

    move-object/from16 v0, p3

    iget v0, v0, Landroid/support/v8/renderscript/Float2;->x:F

    move/from16 v16, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/support/v8/renderscript/Float2;->y:F

    move/from16 v17, v0

    move-object/from16 v0, p6

    iget v0, v0, Landroid/support/v8/renderscript/Float2;->x:F

    move/from16 v22, v0

    move-object/from16 v0, p6

    iget v0, v0, Landroid/support/v8/renderscript/Float2;->y:F

    move/from16 v23, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v8, p2

    move/from16 v11, p1

    invoke-virtual/range {v4 .. v30}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 3529
    return-void

    .line 3516
    .end local v18    # "aID":J
    .end local v20    # "bID":J
    .end local v24    # "cID":J
    .end local v30    # "mUseIncSupp":Z
    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v15

    goto/16 :goto_0
.end method

.method public CSYRK(IILandroid/support/v8/renderscript/Float2;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Float2;Landroid/support/v8/renderscript/Allocation;)V
    .locals 32
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # Landroid/support/v8/renderscript/Float2;
    .param p4, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "beta"    # Landroid/support/v8/renderscript/Float2;
    .param p6, "C"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 3341
    invoke-static/range {p2 .. p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 3342
    invoke-static/range {p1 .. p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3343
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 3344
    const/4 v13, -0x1

    .line 3345
    .local v13, "K":I
    const/16 v2, 0x6f

    move/from16 v0, p2

    if-eq v0, v2, :cond_1

    .line 3346
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v13

    .line 3351
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 3352
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 3353
    .local v16, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v30

    .line 3354
    .local v30, "cID":J
    if-eqz v28, :cond_0

    .line 3355
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 3356
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v30

    .line 3358
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x7f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p6 .. p6}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v12

    move-object/from16 v0, p3

    iget v14, v0, Landroid/support/v8/renderscript/Float2;->x:F

    move-object/from16 v0, p3

    iget v15, v0, Landroid/support/v8/renderscript/Float2;->y:F

    const-wide/16 v18, 0x0

    move-object/from16 v0, p5

    iget v0, v0, Landroid/support/v8/renderscript/Float2;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p5

    iget v0, v0, Landroid/support/v8/renderscript/Float2;->y:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    .line 3359
    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    .line 3358
    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 3360
    return-void

    .line 3348
    .end local v16    # "aID":J
    .end local v28    # "mUseIncSupp":Z
    .end local v30    # "cID":J
    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v13

    goto :goto_0
.end method

.method public CTBMV(IIIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 29
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p7, "incX"    # I

    .prologue
    .line 886
    if-gez p4, :cond_0

    .line 887
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "K must be greater than or equal to 0"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 889
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V

    .line 890
    invoke-virtual/range {p5 .. p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v12

    .line 892
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 893
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 894
    .local v16, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 895
    .local v18, "xID":J
    if-eqz v28, :cond_1

    .line 896
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 897
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 899
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x42

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

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

    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 900
    return-void
.end method

.method public CTBSV(IIIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 29
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p7, "incX"    # I

    .prologue
    .line 1294
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V

    .line 1295
    invoke-virtual/range {p5 .. p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v12

    .line 1296
    .local v12, "N":I
    if-gez p4, :cond_0

    .line 1297
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "Number of diagonals must be positive"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1300
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 1301
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 1302
    .local v16, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 1303
    .local v18, "xID":J
    if-eqz v28, :cond_1

    .line 1304
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 1305
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 1307
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x45

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

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

    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 1308
    return-void
.end method

.method public CTPMV(IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 29
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    .line 1031
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)I

    move-result v12

    .line 1033
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 1034
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 1035
    .local v16, "apID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 1036
    .local v18, "xID":J
    if-eqz v28, :cond_0

    .line 1037
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 1038
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 1040
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x43

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

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

    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 1041
    return-void
.end method

.method public CTPSV(IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 29
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    .line 1442
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)I

    move-result v12

    .line 1444
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 1445
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 1446
    .local v16, "apID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 1447
    .local v18, "xID":J
    if-eqz v28, :cond_0

    .line 1448
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 1449
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 1451
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x46

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

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

    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 1452
    return-void
.end method

.method public CTRMM(IIIILandroid/support/v8/renderscript/Float2;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 31
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # Landroid/support/v8/renderscript/Float2;
    .param p6, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p7, "B"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 3673
    invoke-static/range {p2 .. p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3674
    invoke-static/range {p4 .. p4}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 3675
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v4}, Landroid/support/v8/renderscript/Element;->F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTRMM(Landroid/support/v8/renderscript/Element;IILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 3677
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v30

    .line 3678
    .local v30, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 3679
    .local v18, "aID":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 3680
    .local v20, "bID":J
    if-eqz v30, :cond_0

    .line 3681
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 3682
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 3684
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x81

    const/4 v9, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v13

    invoke-virtual/range {p7 .. p7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p5

    iget v0, v0, Landroid/support/v8/renderscript/Float2;->x:F

    move/from16 v16, v0

    move-object/from16 v0, p5

    iget v0, v0, Landroid/support/v8/renderscript/Float2;->y:F

    move/from16 v17, v0

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

    invoke-virtual/range {v4 .. v30}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 3686
    return-void
.end method

.method public CTRMV(IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 29
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V

    .line 746
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v12

    .line 748
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 749
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 750
    .local v16, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 751
    .local v18, "xID":J
    if-eqz v28, :cond_0

    .line 752
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 753
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 755
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x41

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

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

    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 756
    return-void
.end method

.method public CTRSM(IIIILandroid/support/v8/renderscript/Float2;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 31
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # Landroid/support/v8/renderscript/Float2;
    .param p6, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p7, "B"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 3827
    invoke-static/range {p2 .. p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3828
    invoke-static/range {p4 .. p4}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 3829
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v4}, Landroid/support/v8/renderscript/Element;->F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTRSM(Landroid/support/v8/renderscript/Element;IILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 3831
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v30

    .line 3832
    .local v30, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 3833
    .local v18, "aID":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 3834
    .local v20, "bID":J
    if-eqz v30, :cond_0

    .line 3835
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 3836
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 3838
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x82

    const/4 v9, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v13

    invoke-virtual/range {p7 .. p7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p5

    iget v0, v0, Landroid/support/v8/renderscript/Float2;->x:F

    move/from16 v16, v0

    move-object/from16 v0, p5

    iget v0, v0, Landroid/support/v8/renderscript/Float2;->y:F

    move/from16 v17, v0

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

    invoke-virtual/range {v4 .. v30}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 3840
    return-void
.end method

.method public CTRSV(IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 29
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    .line 1150
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V

    .line 1151
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v12

    .line 1153
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 1154
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 1155
    .local v16, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 1156
    .local v18, "xID":J
    if-eqz v28, :cond_0

    .line 1157
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 1158
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 1160
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x44

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

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

    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIIIZ)V

    .line 1162
    return-void
.end method

.method public DGBMV(IIIDLandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;IDLandroid/support/v8/renderscript/Allocation;I)V
    .locals 29
    .param p1, "TransA"    # I
    .param p2, "KL"    # I
    .param p3, "KU"    # I
    .param p4, "alpha"    # D
    .param p6, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p7, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p8, "incX"    # I
    .param p9, "beta"    # D
    .param p11, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p12, "incY"    # I

    .prologue
    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p11

    move/from16 v8, p12

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;I)V

    .line 512
    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 513
    :cond_0
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "KL and KU must be greater than or equal to 0"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 515
    :cond_1
    invoke-virtual/range {p6 .. p6}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v11

    .line 516
    .local v11, "M":I
    invoke-virtual/range {p6 .. p6}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v12

    .line 518
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 519
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 520
    .local v16, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 521
    .local v18, "xID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p11

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v22

    .line 522
    .local v22, "yID":J
    if-eqz v28, :cond_2

    .line 523
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 524
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 525
    move-object/from16 v0, p0

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v22

    .line 527
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x38

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move/from16 v6, p1

    move-wide/from16 v14, p4

    move-wide/from16 v20, p9

    move/from16 v24, p8

    move/from16 v25, p12

    move/from16 v26, p2

    move/from16 v27, p3

    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 528
    return-void
.end method

.method public DGEMM(IIDLandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;DLandroid/support/v8/renderscript/Allocation;)V
    .locals 29
    .param p1, "TransA"    # I
    .param p2, "TransB"    # I
    .param p3, "alpha"    # D
    .param p5, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "B"    # Landroid/support/v8/renderscript/Allocation;
    .param p7, "beta"    # D
    .param p9, "C"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 2992
    invoke-static/range {p1 .. p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2993
    invoke-static/range {p2 .. p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2994
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    const/4 v5, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p9

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 2995
    const/4 v11, -0x1

    .local v11, "M":I
    const/4 v12, -0x1

    .local v12, "N":I
    const/4 v13, -0x1

    .line 2996
    .local v13, "K":I
    const/16 v2, 0x6f

    move/from16 v0, p1

    if-eq v0, v2, :cond_1

    .line 2997
    invoke-virtual/range {p5 .. p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v11

    .line 2998
    invoke-virtual/range {p5 .. p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v13

    .line 3003
    :goto_0
    const/16 v2, 0x6f

    move/from16 v0, p2

    if-eq v0, v2, :cond_2

    .line 3004
    invoke-virtual/range {p6 .. p6}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v12

    .line 3009
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 3010
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 3011
    .local v16, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 3012
    .local v18, "bID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v22

    .line 3013
    .local v22, "cID":J
    if-eqz v28, :cond_0

    .line 3014
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 3015
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 3016
    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v22

    .line 3018
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x77

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p1

    move/from16 v7, p2

    move-wide/from16 v14, p3

    move-wide/from16 v20, p7

    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 3020
    return-void

    .line 3000
    .end local v16    # "aID":J
    .end local v18    # "bID":J
    .end local v22    # "cID":J
    .end local v28    # "mUseIncSupp":Z
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v11

    .line 3001
    invoke-virtual/range {p5 .. p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v13

    goto/16 :goto_0

    .line 3006
    :cond_2
    invoke-virtual/range {p6 .. p6}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v12

    goto :goto_1
.end method

.method public DGEMV(IDLandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;IDLandroid/support/v8/renderscript/Allocation;I)V
    .locals 29
    .param p1, "TransA"    # I
    .param p2, "alpha"    # D
    .param p4, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "incX"    # I
    .param p7, "beta"    # D
    .param p9, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p10, "incY"    # I

    .prologue
    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p9

    move/from16 v8, p10

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;I)V

    .line 361
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v11

    .line 362
    .local v11, "M":I
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v12

    .line 364
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 365
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 366
    .local v16, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 367
    .local v18, "xID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v22

    .line 368
    .local v22, "yID":J
    if-eqz v28, :cond_0

    .line 369
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 370
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 371
    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v22

    .line 373
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x37

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p1

    move-wide/from16 v14, p2

    move-wide/from16 v20, p7

    move/from16 v24, p6

    move/from16 v25, p10

    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 374
    return-void
.end method

.method public DGER(DLandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)V
    .locals 29
    .param p1, "alpha"    # D
    .param p3, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "A"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 2084
    invoke-virtual/range {p7 .. p7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v11

    .line 2085
    .local v11, "M":I
    invoke-virtual/range {p7 .. p7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v12

    .line 2086
    .local v12, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v2 .. v7}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateGER(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)V

    .line 2088
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 2089
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v22

    .line 2090
    .local v22, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 2091
    .local v16, "xID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 2092
    .local v18, "yID":J
    if-eqz v28, :cond_0

    .line 2093
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v22

    .line 2094
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 2095
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 2097
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x5a

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const-wide/16 v20, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-wide/from16 v14, p1

    move/from16 v24, p4

    move/from16 v25, p6

    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 2098
    return-void
.end method

.method public DSBMV(IIDLandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;IDLandroid/support/v8/renderscript/Allocation;I)V
    .locals 29
    .param p1, "Uplo"    # I
    .param p2, "K"    # I
    .param p3, "alpha"    # D
    .param p5, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p7, "incX"    # I
    .param p8, "beta"    # D
    .param p10, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p11, "incY"    # I

    .prologue
    .line 2015
    if-gez p2, :cond_0

    .line 2016
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "K must be greater than or equal to 0"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2018
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p10

    move/from16 v7, p7

    move/from16 v8, p11

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSYMV(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;II)I

    move-result v12

    .line 2020
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 2021
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 2022
    .local v16, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 2023
    .local v18, "xID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p10

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v22

    .line 2024
    .local v22, "yID":J
    if-eqz v28, :cond_1

    .line 2025
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 2026
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 2027
    move-object/from16 v0, p0

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v22

    .line 2029
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x58

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, p1

    move/from16 v13, p2

    move-wide/from16 v14, p3

    move-wide/from16 v20, p8

    move/from16 v24, p7

    move/from16 v25, p11

    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 2030
    return-void
.end method

.method public DSPMV(IDLandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;IDLandroid/support/v8/renderscript/Allocation;I)V
    .locals 29
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "Ap"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "incX"    # I
    .param p7, "beta"    # D
    .param p9, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p10, "incY"    # I

    .prologue
    .line 2056
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p9

    move/from16 v8, p10

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSPMV(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;I)I

    move-result v12

    .line 2058
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 2059
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 2060
    .local v16, "apID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 2061
    .local v18, "xID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v22

    .line 2062
    .local v22, "yID":J
    if-eqz v28, :cond_0

    .line 2063
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 2064
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 2065
    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v22

    .line 2067
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x59

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, p1

    move-wide/from16 v14, p2

    move-wide/from16 v20, p7

    move/from16 v24, p6

    move/from16 v25, p10

    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 2068
    return-void
.end method

.method public DSPR(IDLandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)V
    .locals 32
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "Ap"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 2146
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v4}, Landroid/support/v8/renderscript/Element;->F64(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p6

    invoke-static {v4, v0, v1, v2, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSPR(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)I

    move-result v14

    .line 2148
    .local v14, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v30

    .line 2149
    .local v30, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 2150
    .local v20, "apID":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 2151
    .local v18, "xID":J
    if-eqz v30, :cond_0

    .line 2152
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 2153
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 2155
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x5c

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v11, p1

    move-wide/from16 v16, p2

    move/from16 v26, p5

    invoke-virtual/range {v4 .. v30}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 2156
    return-void
.end method

.method public DSPR2(IDLandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)V
    .locals 30
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p7, "incY"    # I
    .param p8, "Ap"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 2210
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)I

    move-result v12

    .line 2212
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 2213
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v22

    .line 2214
    .local v22, "apID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 2215
    .local v16, "xID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 2216
    .local v18, "yID":J
    if-eqz v28, :cond_0

    .line 2217
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v22

    .line 2218
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 2219
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 2221
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x5e

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v20, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, p1

    move-wide/from16 v14, p2

    move/from16 v24, p5

    move/from16 v25, p7

    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 2222
    return-void
.end method

.method public DSYMM(IIDLandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;DLandroid/support/v8/renderscript/Allocation;)V
    .locals 29
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "alpha"    # D
    .param p5, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "B"    # Landroid/support/v8/renderscript/Allocation;
    .param p7, "beta"    # D
    .param p9, "C"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 3167
    invoke-static/range {p1 .. p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 3168
    invoke-static/range {p2 .. p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3169
    invoke-virtual/range {p5 .. p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual/range {p5 .. p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 3170
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "Matrix A is not symmetric"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3172
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v5, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p9

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 3174
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 3175
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 3176
    .local v16, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 3177
    .local v18, "bID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v22

    .line 3178
    .local v22, "cID":J
    if-eqz v28, :cond_1

    .line 3179
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 3180
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 3181
    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v22

    .line 3183
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x78

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p9 .. p9}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v11

    invoke-virtual/range {p9 .. p9}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v12

    const/4 v13, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v8, p1

    move/from16 v9, p2

    move-wide/from16 v14, p3

    move-wide/from16 v20, p7

    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 3185
    return-void
.end method

.method public DSYMV(IDLandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;IDLandroid/support/v8/renderscript/Allocation;I)V
    .locals 29
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "incX"    # I
    .param p7, "beta"    # D
    .param p9, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p10, "incY"    # I

    .prologue
    .line 1976
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p9

    move/from16 v7, p6

    move/from16 v8, p10

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSYMV(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;II)I

    move-result v12

    .line 1978
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 1979
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 1980
    .local v16, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 1981
    .local v18, "xID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v22

    .line 1982
    .local v22, "yID":J
    if-eqz v28, :cond_0

    .line 1983
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 1984
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 1985
    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v22

    .line 1987
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x57

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, p1

    move-wide/from16 v14, p2

    move-wide/from16 v20, p7

    move/from16 v24, p6

    move/from16 v25, p10

    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 1988
    return-void
.end method

.method public DSYR(IDLandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)V
    .locals 32
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "A"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 2113
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v4}, Landroid/support/v8/renderscript/Element;->F64(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p6

    invoke-static {v4, v0, v1, v2, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSYR(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)I

    move-result v14

    .line 2115
    .local v14, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v30

    .line 2116
    .local v30, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 2117
    .local v20, "aID":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 2118
    .local v18, "xID":J
    if-eqz v30, :cond_0

    .line 2119
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 2120
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 2122
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x5b

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v11, p1

    move-wide/from16 v16, p2

    move/from16 v26, p5

    invoke-virtual/range {v4 .. v30}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 2123
    return-void
.end method

.method public DSYR2(IDLandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)V
    .locals 30
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p7, "incY"    # I
    .param p8, "A"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 2173
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)I

    move-result v12

    .line 2175
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 2176
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v22

    .line 2177
    .local v22, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 2178
    .local v16, "xID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 2179
    .local v18, "yID":J
    if-eqz v28, :cond_0

    .line 2180
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v22

    .line 2181
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 2182
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 2184
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x5d

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v20, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v9, p1

    move-wide/from16 v14, p2

    move/from16 v24, p5

    move/from16 v25, p7

    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 2185
    return-void
.end method

.method public DSYR2K(IIDLandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;DLandroid/support/v8/renderscript/Allocation;)V
    .locals 31
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # D
    .param p5, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "B"    # Landroid/support/v8/renderscript/Allocation;
    .param p7, "beta"    # D
    .param p9, "C"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 3474
    invoke-static/range {p1 .. p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3475
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v4}, Landroid/support/v8/renderscript/Element;->F64(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    move/from16 v0, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p9

    invoke-static {v4, v0, v1, v2, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSYR2K(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 3476
    const/4 v15, -0x1

    .line 3477
    .local v15, "K":I
    const/16 v4, 0x6f

    move/from16 v0, p2

    if-eq v0, v4, :cond_1

    .line 3478
    invoke-virtual/range {p5 .. p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v15

    .line 3483
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v30

    .line 3484
    .local v30, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 3485
    .local v18, "aID":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 3486
    .local v20, "bID":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p9

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v24

    .line 3487
    .local v24, "cID":J
    if-eqz v30, :cond_0

    .line 3488
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 3489
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 3490
    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v24

    .line 3492
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x7a

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p9 .. p9}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v14

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v8, p2

    move/from16 v11, p1

    move-wide/from16 v16, p3

    move-wide/from16 v22, p7

    invoke-virtual/range {v4 .. v30}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 3493
    return-void

    .line 3480
    .end local v18    # "aID":J
    .end local v20    # "bID":J
    .end local v24    # "cID":J
    .end local v30    # "mUseIncSupp":Z
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v15

    goto :goto_0
.end method

.method public DSYRK(IIDLandroid/support/v8/renderscript/Allocation;DLandroid/support/v8/renderscript/Allocation;)V
    .locals 29
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # D
    .param p5, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "beta"    # D
    .param p8, "C"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 3307
    invoke-static/range {p2 .. p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 3308
    invoke-static/range {p1 .. p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3309
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v6, p5

    move-object/from16 v8, p8

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 3310
    const/4 v13, -0x1

    .line 3311
    .local v13, "K":I
    const/16 v2, 0x6f

    move/from16 v0, p2

    if-eq v0, v2, :cond_1

    .line 3312
    invoke-virtual/range {p5 .. p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v13

    .line 3317
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 3318
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 3319
    .local v16, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v22

    .line 3320
    .local v22, "cID":J
    if-eqz v28, :cond_0

    .line 3321
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 3322
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v22

    .line 3324
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x79

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p8 .. p8}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v12

    const-wide/16 v18, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move-wide/from16 v14, p3

    move-wide/from16 v20, p6

    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 3325
    return-void

    .line 3314
    .end local v16    # "aID":J
    .end local v22    # "cID":J
    .end local v28    # "mUseIncSupp":Z
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v13

    goto :goto_0
.end method

.method public DTBMV(IIIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 29
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p7, "incX"    # I

    .prologue
    .line 847
    if-gez p4, :cond_0

    .line 848
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "K must be greater than or equal to 0"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 850
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V

    .line 851
    invoke-virtual/range {p5 .. p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v12

    .line 853
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 854
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 855
    .local v16, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 856
    .local v18, "xID":J
    if-eqz v28, :cond_1

    .line 857
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 858
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 860
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x3a

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const-wide/16 v14, 0x0

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

    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 861
    return-void
.end method

.method public DTBSV(IIIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 29
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p7, "incX"    # I

    .prologue
    .line 1255
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V

    .line 1256
    invoke-virtual/range {p5 .. p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v12

    .line 1257
    .local v12, "N":I
    if-gez p4, :cond_0

    .line 1258
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "Number of diagonals must be positive"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1261
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 1262
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 1263
    .local v16, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 1264
    .local v18, "xID":J
    if-eqz v28, :cond_1

    .line 1265
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 1266
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 1268
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x3d

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const-wide/16 v14, 0x0

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

    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 1269
    return-void
.end method

.method public DTPMV(IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 29
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    .line 997
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)I

    move-result v12

    .line 999
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 1000
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 1001
    .local v16, "apID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 1002
    .local v18, "xID":J
    if-eqz v28, :cond_0

    .line 1003
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 1004
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 1006
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x3b

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v24, p6

    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 1007
    return-void
.end method

.method public DTPSV(IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 29
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    .line 1407
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)I

    move-result v12

    .line 1409
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 1410
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 1411
    .local v16, "apID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 1412
    .local v18, "xID":J
    if-eqz v28, :cond_0

    .line 1413
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 1414
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 1416
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x3e

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v24, p6

    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 1417
    return-void
.end method

.method public DTRMM(IIIIDLandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 31
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # D
    .param p7, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p8, "B"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 3642
    invoke-static/range {p2 .. p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3643
    invoke-static/range {p4 .. p4}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 3644
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v4}, Landroid/support/v8/renderscript/Element;->F64(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    invoke-static {v4, v0, v1, v2, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTRMM(Landroid/support/v8/renderscript/Element;IILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 3646
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v30

    .line 3647
    .local v30, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 3648
    .local v18, "aID":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p8

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 3649
    .local v20, "bID":J
    if-eqz v30, :cond_0

    .line 3650
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 3651
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 3653
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x7b

    const/4 v9, 0x0

    invoke-virtual/range {p8 .. p8}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v13

    invoke-virtual/range {p8 .. p8}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v14

    const/4 v15, 0x0

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

    invoke-virtual/range {v4 .. v30}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 3655
    return-void
.end method

.method public DTRMV(IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 29
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    .line 718
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V

    .line 719
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v12

    .line 721
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 722
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 723
    .local v16, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 724
    .local v18, "xID":J
    if-eqz v28, :cond_0

    .line 725
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 726
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 728
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x39

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v24, p6

    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 729
    return-void
.end method

.method public DTRSM(IIIIDLandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 31
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # D
    .param p7, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p8, "B"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 3796
    invoke-static/range {p2 .. p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3797
    invoke-static/range {p4 .. p4}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 3798
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v4}, Landroid/support/v8/renderscript/Element;->F64(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    invoke-static {v4, v0, v1, v2, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTRSM(Landroid/support/v8/renderscript/Element;IILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 3800
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v30

    .line 3801
    .local v30, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 3802
    .local v18, "aID":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p8

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 3803
    .local v20, "bID":J
    if-eqz v30, :cond_0

    .line 3804
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 3805
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 3807
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x7c

    const/4 v9, 0x0

    invoke-virtual/range {p8 .. p8}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v13

    invoke-virtual/range {p8 .. p8}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v14

    const/4 v15, 0x0

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

    invoke-virtual/range {v4 .. v30}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 3809
    return-void
.end method

.method public DTRSV(IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 29
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    .line 1121
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V

    .line 1122
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v12

    .line 1124
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v28

    .line 1125
    .local v28, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 1126
    .local v16, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 1127
    .local v18, "xID":J
    if-eqz v28, :cond_0

    .line 1128
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 1129
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 1131
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x3c

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p3

    move/from16 v24, p6

    invoke-virtual/range {v2 .. v28}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIIIZ)V

    .line 1133
    return-void
.end method

.method public SGBMV(IIIFLandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;IFLandroid/support/v8/renderscript/Allocation;I)V
    .locals 28
    .param p1, "TransA"    # I
    .param p2, "KL"    # I
    .param p3, "KU"    # I
    .param p4, "alpha"    # F
    .param p5, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p7, "incX"    # I
    .param p8, "beta"    # F
    .param p9, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p10, "incY"    # I

    .prologue
    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p9

    move/from16 v8, p10

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;I)V

    .line 467
    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 468
    :cond_0
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "KL and KU must be greater than or equal to 0"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 470
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v12

    .line 471
    .local v12, "M":I
    invoke-virtual/range {p5 .. p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v13

    .line 473
    .local v13, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v27

    .line 474
    .local v27, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 475
    .local v16, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 476
    .local v18, "xID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v21

    .line 477
    .local v21, "yID":J
    if-eqz v27, :cond_2

    .line 478
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 479
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 480
    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v21

    .line 482
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x30

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move/from16 v7, p1

    move/from16 v15, p4

    move/from16 v20, p8

    move/from16 v23, p7

    move/from16 v24, p10

    move/from16 v25, p2

    move/from16 v26, p3

    invoke-virtual/range {v3 .. v27}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 483
    return-void
.end method

.method public SGEMM(IIFLandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;FLandroid/support/v8/renderscript/Allocation;)V
    .locals 28
    .param p1, "TransA"    # I
    .param p2, "TransB"    # I
    .param p3, "alpha"    # F
    .param p4, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "B"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "beta"    # F
    .param p7, "C"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 2945
    invoke-static/range {p1 .. p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2946
    invoke-static/range {p2 .. p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2947
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    const/4 v5, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 2949
    const/4 v12, -0x1

    .local v12, "M":I
    const/4 v13, -0x1

    .local v13, "N":I
    const/4 v14, -0x1

    .line 2950
    .local v14, "K":I
    const/16 v2, 0x6f

    move/from16 v0, p1

    if-eq v0, v2, :cond_1

    .line 2951
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v12

    .line 2952
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v14

    .line 2957
    :goto_0
    const/16 v2, 0x6f

    move/from16 v0, p2

    if-eq v0, v2, :cond_2

    .line 2958
    invoke-virtual/range {p5 .. p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v13

    .line 2963
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v27

    .line 2964
    .local v27, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 2965
    .local v16, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 2966
    .local v18, "bID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v21

    .line 2967
    .local v21, "cID":J
    if-eqz v27, :cond_0

    .line 2968
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 2969
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 2970
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v21

    .line 2972
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x71

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v15, p3

    move/from16 v20, p6

    invoke-virtual/range {v3 .. v27}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 2974
    return-void

    .line 2954
    .end local v16    # "aID":J
    .end local v18    # "bID":J
    .end local v21    # "cID":J
    .end local v27    # "mUseIncSupp":Z
    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v12

    .line 2955
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v14

    goto/16 :goto_0

    .line 2960
    :cond_2
    invoke-virtual/range {p5 .. p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v13

    goto :goto_1
.end method

.method public SGEMV(IFLandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;IFLandroid/support/v8/renderscript/Allocation;I)V
    .locals 28
    .param p1, "TransA"    # I
    .param p2, "alpha"    # F
    .param p3, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # F
    .param p7, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p8, "incY"    # I

    .prologue
    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;I)V

    .line 329
    invoke-virtual/range {p3 .. p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v12

    .line 330
    .local v12, "M":I
    invoke-virtual/range {p3 .. p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v13

    .line 332
    .local v13, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v27

    .line 333
    .local v27, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 334
    .local v16, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 335
    .local v18, "xID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v21

    .line 336
    .local v21, "yID":J
    if-eqz v27, :cond_0

    .line 337
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 338
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 339
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v21

    .line 341
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x2f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v7, p1

    move/from16 v15, p2

    move/from16 v20, p6

    move/from16 v23, p5

    move/from16 v24, p8

    invoke-virtual/range {v3 .. v27}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 342
    return-void
.end method

.method public SGER(FLandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)V
    .locals 28
    .param p1, "alpha"    # F
    .param p2, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "A"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 1820
    invoke-virtual/range {p6 .. p6}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v12

    .line 1821
    .local v12, "M":I
    invoke-virtual/range {p6 .. p6}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v13

    .line 1822
    .local v13, "N":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateGER(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)V

    .line 1824
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v27

    .line 1825
    .local v27, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v21

    .line 1826
    .local v21, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 1827
    .local v16, "xID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 1828
    .local v18, "yID":J
    if-eqz v27, :cond_0

    .line 1829
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v21

    .line 1830
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 1831
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 1833
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x52

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v20, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v15, p1

    move/from16 v23, p3

    move/from16 v24, p5

    invoke-virtual/range {v3 .. v27}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 1834
    return-void
.end method

.method public SSBMV(IIFLandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;IFLandroid/support/v8/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "K"    # I
    .param p3, "alpha"    # F
    .param p4, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "incX"    # I
    .param p7, "beta"    # F
    .param p8, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p9, "incY"    # I

    .prologue
    .line 1751
    if-gez p2, :cond_0

    .line 1752
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "K must be greater than or equal to 0"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1754
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p8

    move/from16 v7, p6

    move/from16 v8, p9

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSYMV(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;II)I

    move-result v13

    .line 1756
    .local v13, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v27

    .line 1757
    .local v27, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 1758
    .local v16, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 1759
    .local v18, "xID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v21

    .line 1760
    .local v21, "yID":J
    if-eqz v27, :cond_1

    .line 1761
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 1762
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 1763
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v21

    .line 1765
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x50

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v10, p1

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v20, p7

    move/from16 v23, p6

    move/from16 v24, p9

    invoke-virtual/range {v3 .. v27}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 1766
    return-void
.end method

.method public SSPMV(IFLandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;IFLandroid/support/v8/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "Ap"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # F
    .param p7, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p8, "incY"    # I

    .prologue
    .line 1792
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSPMV(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;I)I

    move-result v13

    .line 1794
    .local v13, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v27

    .line 1795
    .local v27, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 1796
    .local v16, "apID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 1797
    .local v18, "xID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v21

    .line 1798
    .local v21, "yID":J
    if-eqz v27, :cond_0

    .line 1799
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 1800
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 1801
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v21

    .line 1803
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x51

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v10, p1

    move/from16 v15, p2

    move/from16 v20, p6

    move/from16 v23, p5

    move/from16 v24, p8

    invoke-virtual/range {v3 .. v27}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 1804
    return-void
.end method

.method public SSPR(IFLandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)V
    .locals 30
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Ap"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 1882
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v4}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {v4, v0, v1, v2, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSPR(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)I

    move-result v15

    .line 1884
    .local v15, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v29

    .line 1885
    .local v29, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 1886
    .local v20, "apID":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 1887
    .local v18, "xID":J
    if-eqz v29, :cond_0

    .line 1888
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 1889
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 1891
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v6

    const/16 v8, 0x54

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v12, p1

    move/from16 v17, p2

    move/from16 v25, p4

    invoke-virtual/range {v5 .. v29}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 1892
    return-void
.end method

.method public SSPR2(IFLandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "Ap"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 1946
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)I

    move-result v13

    .line 1948
    .local v13, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v27

    .line 1949
    .local v27, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v21

    .line 1950
    .local v21, "apID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 1951
    .local v16, "xID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 1952
    .local v18, "yID":J
    if-eqz v27, :cond_0

    .line 1953
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v21

    .line 1954
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 1955
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 1957
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x56

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v20, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v10, p1

    move/from16 v15, p2

    move/from16 v23, p4

    move/from16 v24, p6

    invoke-virtual/range {v3 .. v27}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 1958
    return-void
.end method

.method public SSYMM(IIFLandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;FLandroid/support/v8/renderscript/Allocation;)V
    .locals 28
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "alpha"    # F
    .param p4, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "B"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "beta"    # F
    .param p7, "C"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 3130
    invoke-static/range {p1 .. p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 3131
    invoke-static/range {p2 .. p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3133
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 3134
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "Matrix A is not symmetric"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3136
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 3138
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v27

    .line 3139
    .local v27, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 3140
    .local v16, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 3141
    .local v18, "bID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v21

    .line 3142
    .local v21, "cID":J
    if-eqz v27, :cond_1

    .line 3143
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 3144
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 3145
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v21

    .line 3147
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x72

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v12

    invoke-virtual/range {p7 .. p7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v13

    const/4 v14, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v15, p3

    move/from16 v20, p6

    invoke-virtual/range {v3 .. v27}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 3149
    return-void
.end method

.method public SSYMV(IFLandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;IFLandroid/support/v8/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # F
    .param p7, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p8, "incY"    # I

    .prologue
    .line 1712
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p7

    move/from16 v7, p5

    move/from16 v8, p8

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSYMV(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;II)I

    move-result v13

    .line 1714
    .local v13, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v27

    .line 1715
    .local v27, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 1716
    .local v16, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 1717
    .local v18, "xID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v21

    .line 1718
    .local v21, "yID":J
    if-eqz v27, :cond_0

    .line 1719
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 1720
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 1721
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v21

    .line 1723
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x4f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v10, p1

    move/from16 v15, p2

    move/from16 v20, p6

    move/from16 v23, p5

    move/from16 v24, p8

    invoke-virtual/range {v3 .. v27}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 1724
    return-void
.end method

.method public SSYR(IFLandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)V
    .locals 30
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "A"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 1849
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v4}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {v4, v0, v1, v2, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSYR(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)I

    move-result v15

    .line 1851
    .local v15, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v29

    .line 1852
    .local v29, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 1853
    .local v20, "aID":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 1854
    .local v18, "xID":J
    if-eqz v29, :cond_0

    .line 1855
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 1856
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 1858
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v6

    const/16 v8, 0x53

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v12, p1

    move/from16 v17, p2

    move/from16 v25, p4

    invoke-virtual/range {v5 .. v29}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 1859
    return-void
.end method

.method public SSYR2(IFLandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "A"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 1909
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)I

    move-result v13

    .line 1911
    .local v13, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v27

    .line 1912
    .local v27, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v21

    .line 1913
    .local v21, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 1914
    .local v16, "xID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 1915
    .local v18, "yID":J
    if-eqz v27, :cond_0

    .line 1916
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v21

    .line 1917
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 1918
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 1920
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x55

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v20, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v10, p1

    move/from16 v15, p2

    move/from16 v23, p4

    move/from16 v24, p6

    invoke-virtual/range {v3 .. v27}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 1921
    return-void
.end method

.method public SSYR2K(IIFLandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;FLandroid/support/v8/renderscript/Allocation;)V
    .locals 30
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # F
    .param p4, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "B"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "beta"    # F
    .param p7, "C"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 3438
    invoke-static/range {p1 .. p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3439
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v4}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    move/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSYR2K(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 3440
    const/16 v16, -0x1

    .line 3441
    .local v16, "K":I
    const/16 v4, 0x6f

    move/from16 v0, p2

    if-eq v0, v4, :cond_1

    .line 3442
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v16

    .line 3447
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v29

    .line 3448
    .local v29, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 3449
    .local v18, "aID":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 3450
    .local v20, "bID":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v23

    .line 3451
    .local v23, "cID":J
    if-eqz v29, :cond_0

    .line 3452
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 3453
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 3454
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v23

    .line 3456
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v6

    const/16 v8, 0x74

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v15

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v9, p2

    move/from16 v12, p1

    move/from16 v17, p3

    move/from16 v22, p6

    invoke-virtual/range {v5 .. v29}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 3457
    return-void

    .line 3444
    .end local v18    # "aID":J
    .end local v20    # "bID":J
    .end local v23    # "cID":J
    .end local v29    # "mUseIncSupp":Z
    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v16

    goto :goto_0
.end method

.method public SSYRK(IIFLandroid/support/v8/renderscript/Allocation;FLandroid/support/v8/renderscript/Allocation;)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # F
    .param p4, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "beta"    # F
    .param p6, "C"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 3273
    invoke-static/range {p2 .. p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 3274
    invoke-static/range {p1 .. p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3275
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 3276
    const/4 v14, -0x1

    .line 3277
    .local v14, "K":I
    const/16 v2, 0x6f

    move/from16 v0, p2

    if-eq v0, v2, :cond_1

    .line 3278
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v14

    .line 3283
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v27

    .line 3284
    .local v27, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 3285
    .local v16, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v21

    .line 3286
    .local v21, "cID":J
    if-eqz v27, :cond_0

    .line 3287
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 3288
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v21

    .line 3290
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x73

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p6 .. p6}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v13

    const-wide/16 v18, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v7, p2

    move/from16 v10, p1

    move/from16 v15, p3

    move/from16 v20, p5

    invoke-virtual/range {v3 .. v27}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 3291
    return-void

    .line 3280
    .end local v16    # "aID":J
    .end local v21    # "cID":J
    .end local v27    # "mUseIncSupp":Z
    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v14

    goto :goto_0
.end method

.method public STBMV(IIIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p7, "incX"    # I

    .prologue
    .line 808
    if-gez p4, :cond_0

    .line 809
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "K must be greater than or equal to 0"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 811
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V

    .line 812
    invoke-virtual/range {p5 .. p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v13

    .line 814
    .local v13, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v27

    .line 815
    .local v27, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 816
    .local v16, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 817
    .local v18, "xID":J
    if-eqz v27, :cond_1

    .line 818
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 819
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 821
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x32

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

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

    invoke-virtual/range {v3 .. v27}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 822
    return-void
.end method

.method public STBSV(IIIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p7, "incX"    # I

    .prologue
    .line 1216
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V

    .line 1217
    invoke-virtual/range {p5 .. p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v13

    .line 1218
    .local v13, "N":I
    if-gez p4, :cond_0

    .line 1219
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "Number of diagonals must be positive"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1222
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v27

    .line 1223
    .local v27, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 1224
    .local v16, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 1225
    .local v18, "xID":J
    if-eqz v27, :cond_1

    .line 1226
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 1227
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 1229
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x35

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

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

    invoke-virtual/range {v3 .. v27}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 1230
    return-void
.end method

.method public STPMV(IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    .line 963
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)I

    move-result v13

    .line 965
    .local v13, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v27

    .line 966
    .local v27, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 967
    .local v16, "apID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 968
    .local v18, "xID":J
    if-eqz v27, :cond_0

    .line 969
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 970
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 972
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x33

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v7, p2

    move/from16 v10, p1

    move/from16 v11, p3

    move/from16 v23, p6

    invoke-virtual/range {v3 .. v27}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 973
    return-void
.end method

.method public STPSV(IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    .line 1372
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)I

    move-result v13

    .line 1374
    .local v13, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v27

    .line 1375
    .local v27, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 1376
    .local v16, "apID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 1377
    .local v18, "xID":J
    if-eqz v27, :cond_0

    .line 1378
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 1379
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 1381
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x36

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v7, p2

    move/from16 v10, p1

    move/from16 v11, p3

    move/from16 v23, p6

    invoke-virtual/range {v3 .. v27}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 1382
    return-void
.end method

.method public STRMM(IIIIFLandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 30
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # F
    .param p6, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p7, "B"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 3611
    invoke-static/range {p2 .. p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3612
    invoke-static/range {p4 .. p4}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 3613
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v4}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTRMM(Landroid/support/v8/renderscript/Element;IILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 3615
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v29

    .line 3616
    .local v29, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 3617
    .local v18, "aID":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 3618
    .local v20, "bID":J
    if-eqz v29, :cond_0

    .line 3619
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 3620
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 3622
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v6

    const/16 v8, 0x75

    const/4 v10, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v14

    invoke-virtual/range {p7 .. p7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v15

    const/16 v16, 0x0

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

    invoke-virtual/range {v5 .. v29}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 3624
    return-void
.end method

.method public STRMV(IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    .line 691
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V

    .line 692
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v13

    .line 694
    .local v13, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v27

    .line 695
    .local v27, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 696
    .local v16, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 697
    .local v18, "xID":J
    if-eqz v27, :cond_0

    .line 698
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 699
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 701
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x31

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v7, p2

    move/from16 v10, p1

    move/from16 v11, p3

    move/from16 v23, p6

    invoke-virtual/range {v3 .. v27}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 702
    return-void
.end method

.method public STRSM(IIIIFLandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 30
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # F
    .param p6, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p7, "B"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 3765
    invoke-static/range {p2 .. p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3766
    invoke-static/range {p4 .. p4}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 3767
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v4}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTRSM(Landroid/support/v8/renderscript/Element;IILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 3769
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v29

    .line 3770
    .local v29, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 3771
    .local v18, "aID":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 3772
    .local v20, "bID":J
    if-eqz v29, :cond_0

    .line 3773
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 3774
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 3776
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v6

    const/16 v8, 0x76

    const/4 v10, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v14

    invoke-virtual/range {p7 .. p7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v15

    const/16 v16, 0x0

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

    invoke-virtual/range {v5 .. v29}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 3778
    return-void
.end method

.method public STRSV(IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    .line 1092
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V

    .line 1093
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v13

    .line 1095
    .local v13, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v27

    .line 1096
    .local v27, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 1097
    .local v16, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 1098
    .local v18, "xID":J
    if-eqz v27, :cond_0

    .line 1099
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v16

    .line 1100
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 1102
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    const/16 v6, 0x34

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v7, p2

    move/from16 v10, p1

    move/from16 v11, p3

    move/from16 v23, p6

    invoke-virtual/range {v3 .. v27}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIIIZ)V

    .line 1104
    return-void
.end method

.method public ZGBMV(IIILandroid/support/v8/renderscript/Double2;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Double2;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 33
    .param p1, "TransA"    # I
    .param p2, "KL"    # I
    .param p3, "KU"    # I
    .param p4, "alpha"    # Landroid/support/v8/renderscript/Double2;
    .param p5, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p7, "incX"    # I
    .param p8, "beta"    # Landroid/support/v8/renderscript/Double2;
    .param p9, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p10, "incY"    # I

    .prologue
    .line 601
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p9

    move/from16 v8, p10

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;I)V

    .line 602
    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 603
    :cond_0
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "KL and KU must be greater than or equal to 0"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 605
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v11

    .line 606
    .local v11, "M":I
    invoke-virtual/range {p5 .. p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v12

    .line 608
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v32

    .line 609
    .local v32, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 610
    .local v18, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 611
    .local v20, "xID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v26

    .line 612
    .local v26, "yID":J
    if-eqz v32, :cond_2

    .line 613
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 614
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 615
    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v26

    .line 617
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x48

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p4

    iget-wide v14, v0, Landroid/support/v8/renderscript/Double2;->x:D

    move-object/from16 v0, p4

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p8

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->x:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p8

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->y:D

    move-wide/from16 v24, v0

    move/from16 v6, p1

    move/from16 v28, p7

    move/from16 v29, p10

    move/from16 v30, p2

    move/from16 v31, p3

    invoke-virtual/range {v2 .. v32}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 618
    return-void
.end method

.method public ZGEMM(IILandroid/support/v8/renderscript/Double2;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Double2;Landroid/support/v8/renderscript/Allocation;)V
    .locals 33
    .param p1, "TransA"    # I
    .param p2, "TransB"    # I
    .param p3, "alpha"    # Landroid/support/v8/renderscript/Double2;
    .param p4, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "B"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "beta"    # Landroid/support/v8/renderscript/Double2;
    .param p7, "C"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 3084
    invoke-static/range {p1 .. p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 3085
    invoke-static/range {p2 .. p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 3086
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    const/4 v5, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 3087
    const/4 v11, -0x1

    .local v11, "M":I
    const/4 v12, -0x1

    .local v12, "N":I
    const/4 v13, -0x1

    .line 3088
    .local v13, "K":I
    const/16 v2, 0x6f

    move/from16 v0, p1

    if-eq v0, v2, :cond_1

    .line 3089
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v11

    .line 3090
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v13

    .line 3095
    :goto_0
    const/16 v2, 0x6f

    move/from16 v0, p2

    if-eq v0, v2, :cond_2

    .line 3096
    invoke-virtual/range {p5 .. p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v12

    .line 3101
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v32

    .line 3102
    .local v32, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 3103
    .local v18, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 3104
    .local v20, "bID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v26

    .line 3105
    .local v26, "cID":J
    if-eqz v32, :cond_0

    .line 3106
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 3107
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 3108
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v26

    .line 3110
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x83

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p3

    iget-wide v14, v0, Landroid/support/v8/renderscript/Double2;->x:D

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->x:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->y:D

    move-wide/from16 v24, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-virtual/range {v2 .. v32}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 3112
    return-void

    .line 3092
    .end local v18    # "aID":J
    .end local v20    # "bID":J
    .end local v26    # "cID":J
    .end local v32    # "mUseIncSupp":Z
    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v11

    .line 3093
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v13

    goto/16 :goto_0

    .line 3098
    :cond_2
    invoke-virtual/range {p5 .. p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v12

    goto/16 :goto_1
.end method

.method public ZGEMV(ILandroid/support/v8/renderscript/Double2;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Double2;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 33
    .param p1, "TransA"    # I
    .param p2, "alpha"    # Landroid/support/v8/renderscript/Double2;
    .param p3, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # Landroid/support/v8/renderscript/Double2;
    .param p7, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p8, "incY"    # I

    .prologue
    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;I)V

    .line 425
    invoke-virtual/range {p3 .. p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v11

    .line 426
    .local v11, "M":I
    invoke-virtual/range {p3 .. p3}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v12

    .line 428
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v32

    .line 429
    .local v32, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 430
    .local v18, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 431
    .local v20, "xID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v26

    .line 432
    .local v26, "yID":J
    if-eqz v32, :cond_0

    .line 433
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 434
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 435
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v26

    .line 437
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x47

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/support/v8/renderscript/Double2;->x:D

    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->x:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->y:D

    move-wide/from16 v24, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v6, p1

    move/from16 v28, p5

    move/from16 v29, p8

    invoke-virtual/range {v2 .. v32}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 438
    return-void
.end method

.method public ZGERC(Landroid/support/v8/renderscript/Double2;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)V
    .locals 33
    .param p1, "alpha"    # Landroid/support/v8/renderscript/Double2;
    .param p2, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "A"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 2713
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateGERU(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)V

    .line 2714
    invoke-virtual/range {p6 .. p6}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v11

    .line 2715
    .local v11, "M":I
    invoke-virtual/range {p6 .. p6}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v12

    .line 2717
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v32

    .line 2718
    .local v32, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v26

    .line 2719
    .local v26, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 2720
    .local v18, "xID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 2721
    .local v20, "yID":J
    if-eqz v32, :cond_0

    .line 2722
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v26

    .line 2723
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 2724
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 2726
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x6c

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/support/v8/renderscript/Double2;->x:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v28, p3

    move/from16 v29, p5

    invoke-virtual/range {v2 .. v32}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 2727
    return-void
.end method

.method public ZGERU(Landroid/support/v8/renderscript/Double2;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)V
    .locals 33
    .param p1, "alpha"    # Landroid/support/v8/renderscript/Double2;
    .param p2, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "A"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 2682
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateGERU(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)V

    .line 2683
    invoke-virtual/range {p6 .. p6}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v11

    .line 2684
    .local v11, "M":I
    invoke-virtual/range {p6 .. p6}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v12

    .line 2686
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v32

    .line 2687
    .local v32, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v26

    .line 2688
    .local v26, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 2689
    .local v18, "xID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 2690
    .local v20, "yID":J
    if-eqz v32, :cond_0

    .line 2691
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v26

    .line 2692
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 2693
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 2695
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x6b

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/support/v8/renderscript/Double2;->x:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v28, p3

    move/from16 v29, p5

    invoke-virtual/range {v2 .. v32}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 2696
    return-void
.end method

.method public ZHBMV(IILandroid/support/v8/renderscript/Double2;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Double2;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 33
    .param p1, "Uplo"    # I
    .param p2, "K"    # I
    .param p3, "alpha"    # Landroid/support/v8/renderscript/Double2;
    .param p4, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "incX"    # I
    .param p7, "beta"    # Landroid/support/v8/renderscript/Double2;
    .param p8, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p9, "incY"    # I

    .prologue
    .line 2612
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p4

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)I

    move-result v12

    .line 2613
    .local v12, "N":I
    if-gez p2, :cond_0

    .line 2614
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "K must be 0 or greater for HBMV"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2617
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v32

    .line 2618
    .local v32, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 2619
    .local v18, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 2620
    .local v20, "xID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v26

    .line 2621
    .local v26, "yID":J
    if-eqz v32, :cond_1

    .line 2622
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 2623
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 2624
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v26

    .line 2626
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x69

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p3

    iget-wide v14, v0, Landroid/support/v8/renderscript/Double2;->x:D

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p7

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->x:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p7

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->y:D

    move-wide/from16 v24, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v9, p1

    move/from16 v13, p2

    move/from16 v28, p6

    move/from16 v29, p9

    invoke-virtual/range {v2 .. v32}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 2627
    return-void
.end method

.method public ZHEMM(IILandroid/support/v8/renderscript/Double2;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Double2;Landroid/support/v8/renderscript/Allocation;)V
    .locals 35
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "alpha"    # Landroid/support/v8/renderscript/Double2;
    .param p4, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "B"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "beta"    # Landroid/support/v8/renderscript/Double2;
    .param p7, "C"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 3943
    invoke-static/range {p2 .. p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3944
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v4}, Landroid/support/v8/renderscript/Element;->F64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateHEMM(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 3946
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v34

    .line 3947
    .local v34, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 3948
    .local v20, "aID":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v22

    .line 3949
    .local v22, "bID":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v28

    .line 3950
    .local v28, "cID":J
    if-eqz v34, :cond_0

    .line 3951
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 3952
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v22

    .line 3953
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v28

    .line 3955
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x8c

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v13

    invoke-virtual/range {p7 .. p7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->x:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->y:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->x:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->y:D

    move-wide/from16 v26, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v10, p1

    move/from16 v11, p2

    invoke-virtual/range {v4 .. v34}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 3957
    return-void
.end method

.method public ZHEMV(ILandroid/support/v8/renderscript/Double2;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Double2;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 33
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/support/v8/renderscript/Double2;
    .param p3, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # Landroid/support/v8/renderscript/Double2;
    .param p7, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p8, "incY"    # I

    .prologue
    .line 2573
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)I

    move-result v12

    .line 2575
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v32

    .line 2576
    .local v32, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 2577
    .local v18, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 2578
    .local v20, "xID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v26

    .line 2579
    .local v26, "yID":J
    if-eqz v32, :cond_0

    .line 2580
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 2581
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 2582
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v26

    .line 2584
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x68

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/support/v8/renderscript/Double2;->x:D

    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->x:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->y:D

    move-wide/from16 v24, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v9, p1

    move/from16 v28, p5

    move/from16 v29, p8

    invoke-virtual/range {v2 .. v32}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 2585
    return-void
.end method

.method public ZHER(IDLandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)V
    .locals 36
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "A"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 2743
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v4}, Landroid/support/v8/renderscript/Element;->F64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p6

    invoke-static {v4, v0, v1, v2, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSYR(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)I

    move-result v14

    .line 2745
    .local v14, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v34

    .line 2746
    .local v34, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v28

    .line 2747
    .local v28, "aID":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 2748
    .local v20, "xID":J
    if-eqz v34, :cond_0

    .line 2749
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v28

    .line 2750
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 2752
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x6d

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v11, p1

    move-wide/from16 v16, p2

    move/from16 v30, p5

    invoke-virtual/range {v4 .. v34}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 2753
    return-void
.end method

.method public ZHER2(ILandroid/support/v8/renderscript/Double2;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)V
    .locals 33
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/support/v8/renderscript/Double2;
    .param p3, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "A"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 2805
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)I

    move-result v12

    .line 2807
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v32

    .line 2808
    .local v32, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v26

    .line 2809
    .local v26, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 2810
    .local v18, "xID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 2811
    .local v20, "yID":J
    if-eqz v32, :cond_0

    .line 2812
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v26

    .line 2813
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 2814
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 2816
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x6f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/support/v8/renderscript/Double2;->x:D

    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v9, p1

    move/from16 v28, p4

    move/from16 v29, p6

    invoke-virtual/range {v2 .. v32}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 2817
    return-void
.end method

.method public ZHER2K(IILandroid/support/v8/renderscript/Double2;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;DLandroid/support/v8/renderscript/Allocation;)V
    .locals 38
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # Landroid/support/v8/renderscript/Double2;
    .param p4, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "B"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "beta"    # D
    .param p8, "C"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 4125
    invoke-static/range {p1 .. p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 4126
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v4}, Landroid/support/v8/renderscript/Element;->F64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    move/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p8

    invoke-static {v4, v0, v1, v2, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateHER2K(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 4127
    const/4 v15, 0x0

    .line 4128
    .local v15, "k":I
    const/16 v4, 0x6f

    move/from16 v0, p2

    if-ne v0, v4, :cond_1

    .line 4129
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v15

    .line 4134
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v34

    .line 4135
    .local v34, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v36

    .line 4136
    .local v36, "aID":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v22

    .line 4137
    .local v22, "bID":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p8

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v28

    .line 4138
    .local v28, "cID":J
    if-eqz v34, :cond_0

    .line 4139
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v36

    .line 4140
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v22

    .line 4141
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v28

    .line 4143
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x8e

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p8 .. p8}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v14

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->x:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->y:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    .line 4144
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    const-wide/16 v26, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v8, p2

    move/from16 v11, p1

    move-wide/from16 v24, p6

    .line 4143
    invoke-virtual/range {v4 .. v34}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 4145
    return-void

    .line 4131
    .end local v22    # "bID":J
    .end local v28    # "cID":J
    .end local v34    # "mUseIncSupp":Z
    .end local v36    # "aID":J
    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v15

    goto/16 :goto_0
.end method

.method public ZHERK(IIDLandroid/support/v8/renderscript/Allocation;DLandroid/support/v8/renderscript/Allocation;)V
    .locals 35
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # D
    .param p5, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "beta"    # D
    .param p8, "C"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 4028
    invoke-static/range {p1 .. p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 4029
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v4}, Landroid/support/v8/renderscript/Element;->F64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    move/from16 v0, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p8

    invoke-static {v4, v0, v1, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateHERK(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 4030
    const/4 v15, 0x0

    .line 4031
    .local v15, "k":I
    const/16 v4, 0x71

    move/from16 v0, p2

    if-ne v0, v4, :cond_1

    .line 4032
    invoke-virtual/range {p5 .. p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v15

    .line 4037
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v34

    .line 4038
    .local v34, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 4039
    .local v20, "aID":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p8

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v28

    .line 4040
    .local v28, "cID":J
    if-eqz v34, :cond_0

    .line 4041
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 4042
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v28

    .line 4044
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x8d

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p8 .. p8}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v14

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v26, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v8, p2

    move/from16 v11, p1

    move-wide/from16 v16, p3

    move-wide/from16 v24, p6

    invoke-virtual/range {v4 .. v34}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 4046
    return-void

    .line 4034
    .end local v20    # "aID":J
    .end local v28    # "cID":J
    .end local v34    # "mUseIncSupp":Z
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v15

    goto :goto_0
.end method

.method public ZHPMV(ILandroid/support/v8/renderscript/Double2;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Double2;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 33
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/support/v8/renderscript/Double2;
    .param p3, "Ap"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # Landroid/support/v8/renderscript/Double2;
    .param p7, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p8, "incY"    # I

    .prologue
    .line 2654
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)I

    move-result v12

    .line 2656
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v32

    .line 2657
    .local v32, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 2658
    .local v18, "apID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 2659
    .local v20, "xID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v26

    .line 2660
    .local v26, "yID":J
    if-eqz v32, :cond_0

    .line 2661
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 2662
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 2663
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v26

    .line 2665
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x6a

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/support/v8/renderscript/Double2;->x:D

    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->x:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->y:D

    move-wide/from16 v24, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v9, p1

    move/from16 v28, p5

    move/from16 v29, p8

    invoke-virtual/range {v2 .. v32}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 2666
    return-void
.end method

.method public ZHPR(IDLandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)V
    .locals 36
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "Ap"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 2777
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v4}, Landroid/support/v8/renderscript/Element;->F64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p6

    invoke-static {v4, v0, v1, v2, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSPR(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)I

    move-result v14

    .line 2779
    .local v14, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v34

    .line 2780
    .local v34, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v28

    .line 2781
    .local v28, "apID":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 2782
    .local v20, "xID":J
    if-eqz v34, :cond_0

    .line 2783
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v28

    .line 2784
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 2786
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x6e

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v11, p1

    move-wide/from16 v16, p2

    move/from16 v30, p5

    invoke-virtual/range {v4 .. v34}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 2787
    return-void
.end method

.method public ZHPR2(ILandroid/support/v8/renderscript/Double2;Landroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)V
    .locals 33
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/support/v8/renderscript/Double2;
    .param p3, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "Ap"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 2843
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;ILandroid/support/v8/renderscript/Allocation;)I

    move-result v12

    .line 2845
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v32

    .line 2846
    .local v32, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v26

    .line 2847
    .local v26, "apID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 2848
    .local v18, "xID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 2849
    .local v20, "yID":J
    if-eqz v32, :cond_0

    .line 2850
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v26

    .line 2851
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 2852
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 2854
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x70

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget-wide v14, v0, Landroid/support/v8/renderscript/Double2;->x:D

    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v9, p1

    move/from16 v28, p4

    move/from16 v29, p6

    invoke-virtual/range {v2 .. v32}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 2855
    return-void
.end method

.method public ZSYMM(IILandroid/support/v8/renderscript/Double2;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Double2;Landroid/support/v8/renderscript/Allocation;)V
    .locals 33
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "alpha"    # Landroid/support/v8/renderscript/Double2;
    .param p4, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "B"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "beta"    # Landroid/support/v8/renderscript/Double2;
    .param p7, "C"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 3239
    invoke-static/range {p1 .. p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 3240
    invoke-static/range {p2 .. p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3241
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v2

    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 3242
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "Matrix A is not symmetric"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3244
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 3246
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v32

    .line 3247
    .local v32, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 3248
    .local v18, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 3249
    .local v20, "bID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v26

    .line 3250
    .local v26, "cID":J
    if-eqz v32, :cond_1

    .line 3251
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 3252
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 3253
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v26

    .line 3255
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x84

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v11

    invoke-virtual/range {p7 .. p7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v12

    const/4 v13, 0x0

    move-object/from16 v0, p3

    iget-wide v14, v0, Landroid/support/v8/renderscript/Double2;->x:D

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->x:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->y:D

    move-wide/from16 v24, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v8, p1

    move/from16 v9, p2

    invoke-virtual/range {v2 .. v32}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 3257
    return-void
.end method

.method public ZSYR2K(IILandroid/support/v8/renderscript/Double2;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Double2;Landroid/support/v8/renderscript/Allocation;)V
    .locals 35
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # Landroid/support/v8/renderscript/Double2;
    .param p4, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "B"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "beta"    # Landroid/support/v8/renderscript/Double2;
    .param p7, "C"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 3546
    invoke-static/range {p1 .. p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3547
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v4}, Landroid/support/v8/renderscript/Element;->F64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    move/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateSYR2K(Landroid/support/v8/renderscript/Element;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 3548
    const/4 v15, -0x1

    .line 3549
    .local v15, "K":I
    const/16 v4, 0x6f

    move/from16 v0, p2

    if-eq v0, v4, :cond_1

    .line 3550
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v15

    .line 3555
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v34

    .line 3556
    .local v34, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 3557
    .local v20, "aID":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v22

    .line 3558
    .local v22, "bID":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v28

    .line 3559
    .local v28, "cID":J
    if-eqz v34, :cond_0

    .line 3560
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 3561
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v22

    .line 3562
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v28

    .line 3564
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x86

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v14

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->x:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->y:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->x:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p6

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->y:D

    move-wide/from16 v26, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v8, p2

    move/from16 v11, p1

    invoke-virtual/range {v4 .. v34}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 3565
    return-void

    .line 3552
    .end local v20    # "aID":J
    .end local v22    # "bID":J
    .end local v28    # "cID":J
    .end local v34    # "mUseIncSupp":Z
    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v15

    goto/16 :goto_0
.end method

.method public ZSYRK(IILandroid/support/v8/renderscript/Double2;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Double2;Landroid/support/v8/renderscript/Allocation;)V
    .locals 36
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # Landroid/support/v8/renderscript/Double2;
    .param p4, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "beta"    # Landroid/support/v8/renderscript/Double2;
    .param p6, "C"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 3376
    invoke-static/range {p2 .. p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 3377
    invoke-static/range {p1 .. p1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3378
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v3, p2

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 3379
    const/4 v13, -0x1

    .line 3380
    .local v13, "K":I
    const/16 v2, 0x6f

    move/from16 v0, p2

    if-eq v0, v2, :cond_1

    .line 3381
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v13

    .line 3386
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v32

    .line 3387
    .local v32, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 3388
    .local v18, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v34

    .line 3389
    .local v34, "cID":J
    if-eqz v32, :cond_0

    .line 3390
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 3391
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v34

    .line 3393
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x85

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p6 .. p6}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v12

    move-object/from16 v0, p3

    iget-wide v14, v0, Landroid/support/v8/renderscript/Double2;->x:D

    move-object/from16 v0, p3

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->y:D

    move-wide/from16 v16, v0

    const-wide/16 v20, 0x0

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->x:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->y:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    .line 3394
    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v26

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v6, p2

    move/from16 v9, p1

    .line 3393
    invoke-virtual/range {v2 .. v32}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 3395
    return-void

    .line 3383
    .end local v18    # "aID":J
    .end local v32    # "mUseIncSupp":Z
    .end local v34    # "cID":J
    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v13

    goto :goto_0
.end method

.method public ZTBMV(IIIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 33
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p7, "incX"    # I

    .prologue
    .line 925
    if-gez p4, :cond_0

    .line 926
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "K must be greater than or equal to 0"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 928
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V

    .line 929
    invoke-virtual/range {p5 .. p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v12

    .line 931
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v32

    .line 932
    .local v32, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 933
    .local v18, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 934
    .local v20, "xID":J
    if-eqz v32, :cond_1

    .line 935
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 936
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 938
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x4a

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

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

    invoke-virtual/range {v2 .. v32}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 939
    return-void
.end method

.method public ZTBSV(IIIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 33
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p7, "incX"    # I

    .prologue
    .line 1333
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V

    .line 1334
    invoke-virtual/range {p5 .. p5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v12

    .line 1335
    .local v12, "N":I
    if-gez p4, :cond_0

    .line 1336
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v3, "Number of diagonals must be positive"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1339
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v32

    .line 1340
    .local v32, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 1341
    .local v18, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 1342
    .local v20, "xID":J
    if-eqz v32, :cond_1

    .line 1343
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 1344
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 1346
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x4d

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

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

    invoke-virtual/range {v2 .. v32}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 1347
    return-void
.end method

.method public ZTPMV(IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 33
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    .line 1065
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)I

    move-result v12

    .line 1067
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v32

    .line 1068
    .local v32, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 1069
    .local v18, "apID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 1070
    .local v20, "xID":J
    if-eqz v32, :cond_0

    .line 1071
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 1072
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 1074
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x4b

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

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

    invoke-virtual/range {v2 .. v32}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 1075
    return-void
.end method

.method public ZTPSV(IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 33
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    .line 1477
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)I

    move-result v12

    .line 1479
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v32

    .line 1480
    .local v32, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 1481
    .local v18, "apID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 1482
    .local v20, "xID":J
    if-eqz v32, :cond_0

    .line 1483
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 1484
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 1486
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x4e

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

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

    invoke-virtual/range {v2 .. v32}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 1487
    return-void
.end method

.method public ZTRMM(IIIILandroid/support/v8/renderscript/Double2;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 35
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # Landroid/support/v8/renderscript/Double2;
    .param p6, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p7, "B"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 3704
    invoke-static/range {p2 .. p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3705
    invoke-static/range {p4 .. p4}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 3706
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v4}, Landroid/support/v8/renderscript/Element;->F64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTRMM(Landroid/support/v8/renderscript/Element;IILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 3708
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v34

    .line 3709
    .local v34, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 3710
    .local v20, "aID":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v22

    .line 3711
    .local v22, "bID":J
    if-eqz v34, :cond_0

    .line 3712
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 3713
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v22

    .line 3715
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x87

    const/4 v9, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v13

    invoke-virtual/range {p7 .. p7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->x:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->y:D

    move-wide/from16 v18, v0

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

    invoke-virtual/range {v4 .. v34}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 3717
    return-void
.end method

.method public ZTRMV(IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 33
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    .line 772
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V

    .line 773
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v12

    .line 775
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v32

    .line 776
    .local v32, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 777
    .local v18, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 778
    .local v20, "xID":J
    if-eqz v32, :cond_0

    .line 779
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 780
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 782
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x49

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

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

    invoke-virtual/range {v2 .. v32}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 783
    return-void
.end method

.method public ZTRSM(IIIILandroid/support/v8/renderscript/Double2;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 35
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # Landroid/support/v8/renderscript/Double2;
    .param p6, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p7, "B"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 3858
    invoke-static/range {p2 .. p2}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3859
    invoke-static/range {p4 .. p4}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 3860
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v4}, Landroid/support/v8/renderscript/Element;->F64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    move/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-static {v4, v0, v1, v2, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTRSM(Landroid/support/v8/renderscript/Element;IILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    .line 3862
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v34

    .line 3863
    .local v34, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 3864
    .local v20, "aID":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v22

    .line 3865
    .local v22, "bID":J
    if-eqz v34, :cond_0

    .line 3866
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 3867
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v22

    .line 3869
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v5

    const/16 v7, 0x88

    const/4 v9, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v13

    invoke-virtual/range {p7 .. p7}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->x:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/support/v8/renderscript/Double2;->y:D

    move-wide/from16 v18, v0

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

    invoke-virtual/range {v4 .. v34}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 3871
    return-void
.end method

.method public ZTRSV(IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V
    .locals 33
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/support/v8/renderscript/Allocation;
    .param p5, "X"    # Landroid/support/v8/renderscript/Allocation;
    .param p6, "incX"    # I

    .prologue
    .line 1179
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-static {v2}, Landroid/support/v8/renderscript/Element;->F64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/support/v8/renderscript/Element;IIILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;I)V

    .line 1180
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v12

    .line 1182
    .local v12, "N":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->isIncSupp()Z

    move-result v32

    .line 1183
    .local v32, "mUseIncSupp":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 1184
    .local v18, "aID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v20

    .line 1185
    .local v20, "xID":J
    if-eqz v32, :cond_0

    .line 1186
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v18

    .line 1187
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v20

    .line 1189
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    const/16 v5, 0x4c

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

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

    invoke-virtual/range {v2 .. v32}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIIIZ)V

    .line 1191
    return-void
.end method
